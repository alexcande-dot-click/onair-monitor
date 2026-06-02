import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import '../../core/theme/app_colors.dart';
import 'aircraft_marker.dart';
import 'boarding_pass_sheet.dart';
import 'live_map_controller.dart';
import 'live_map_providers.dart';

class LiveMapScreen extends ConsumerStatefulWidget {
  const LiveMapScreen({super.key});
  @override
  ConsumerState<LiveMapScreen> createState() => _LiveMapScreenState();
}

class _LiveMapScreenState extends ConsumerState<LiveMapScreen> {
  static const _refreshSeconds = 15;
  final _map = MapController();
  Timer? _tick;

  @override
  void initState() {
    super.initState();
    ref.read(secondsUntilRefreshProvider.notifier).state = _refreshSeconds;
    _tick = Timer.periodic(const Duration(seconds: 1), (_) {
      final remaining = ref.read(secondsUntilRefreshProvider) - 1;
      if (remaining <= 0) {
        ref.invalidate(fleetProvider);
        ref.read(secondsUntilRefreshProvider.notifier).state = _refreshSeconds;
      } else {
        ref.read(secondsUntilRefreshProvider.notifier).state = remaining;
      }
    });
  }

  @override
  void dispose() {
    _tick?.cancel();
    _map.dispose();
    super.dispose();
  }

  void _fitFleet(List<AnimatedAircraft> list) {
    final pts = list.map((e) => e.position).toList();
    if (pts.isEmpty) return;
    _map.fitCamera(
        CameraFit.coordinates(coordinates: pts, padding: const EdgeInsets.all(48)));
  }

  Future<void> _openDetail(BuildContext context, String aircraftId) async {
    ref.read(selectedAircraftIdProvider.notifier).state = aircraftId;
    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Consumer(builder: (ctx, r, _) {
        final aircraft = r.watch(selectedAircraftProvider);
        if (aircraft == null) return const SizedBox.shrink();
        return BoardingPassSheet(
          aircraft: aircraft,
          flight: r.watch(selectedFlightProvider),
          onClose: () => Navigator.of(ctx).pop(),
        );
      }),
    );
    ref.read(selectedAircraftIdProvider.notifier).state = null;
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(fleetProvider, (_, next) {
      next.whenData(ref.read(liveMapControllerProvider.notifier).seed);
    });

    final animated = ref.watch(liveMapControllerProvider);
    final groundedVisible = ref.watch(groundedVisibleProvider);
    final visible = visibleAircraft(animated, groundedVisible: groundedVisible);
    final selectedId = ref.watch(selectedAircraftIdProvider);
    final selectedFlight = ref.watch(selectedFlightProvider).asData?.value;

    // origin -> aircraft (live position) -> destination
    LatLng? selectedPos;
    if (selectedId != null) {
      for (final a in animated) {
        if (a.aircraft.id == selectedId) {
          selectedPos = a.position;
          break;
        }
      }
    }
    final trajectory = <LatLng>[
      if (selectedFlight?.departureAirport != null &&
          selectedFlight?.arrivalIntendedAirport != null &&
          selectedPos != null) ...[
        selectedFlight!.departureAirport!.position,
        selectedPos,
        selectedFlight.arrivalIntendedAirport!.position,
      ],
    ];

    return Stack(
      children: [
        FlutterMap(
          mapController: _map,
          options: const MapOptions(
            initialCenter: LatLng(54, 15),
            initialZoom: 4,
            minZoom: 2,
            backgroundColor: AppColors.background,
          ),
          children: [
            TileLayer(
              urlTemplate:
                  'https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}.png',
              subdomains: const ['a', 'b', 'c', 'd'],
              userAgentPackageName: 'com.alexcande.onairmonitor',
            ),
            if (trajectory.length == 3)
              PolylineLayer(polylines: [
                Polyline(
                    points: trajectory,
                    strokeWidth: 3,
                    color: AppColors.electricBlue),
              ]),
            MarkerLayer(
              markers: [
                for (final a in visible)
                  Marker(
                    point: a.position,
                    width: 40,
                    height: 40,
                    child: AircraftMarker(
                        aircraft: a.aircraft,
                        onTap: () => _openDetail(context, a.aircraft.id)),
                  ),
              ],
            ),
            const RichAttributionWidget(attributions: [
              TextSourceAttribution('© OpenStreetMap contributors © CARTO'),
            ]),
          ],
        ),
        const Positioned(left: 12, top: 12, child: _RefreshBadge()),
        Positioned(
          right: 12,
          top: 12,
          child: Column(
            children: [
              FloatingActionButton.small(
                key: const Key('groundedToggle'),
                heroTag: 'grounded',
                onPressed: () => ref.read(groundedVisibleProvider.notifier).state =
                    !groundedVisible,
                backgroundColor: AppColors.surface,
                child: Icon(groundedVisible
                    ? Icons.visibility
                    : Icons.visibility_off),
              ),
              const SizedBox(height: 8),
              FloatingActionButton.small(
                heroTag: 'fit',
                onPressed: () => _fitFleet(visible),
                backgroundColor: AppColors.surface,
                child: const Icon(Icons.center_focus_strong),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// Small square badge showing seconds until the next fleet refresh.
class _RefreshBadge extends ConsumerWidget {
  const _RefreshBadge();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final secs = ref.watch(secondsUntilRefreshProvider);
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: AppColors.surface.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.electricBlue.withValues(alpha: 0.4)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$secs',
              style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  height: 1)),
          const Text('sec',
              style: TextStyle(color: AppColors.textMuted, fontSize: 9)),
        ],
      ),
    );
  }
}
