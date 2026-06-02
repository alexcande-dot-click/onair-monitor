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
  final _map = MapController();
  Timer? _poll;
  Timer? _anim;

  @override
  void initState() {
    super.initState();
    _poll = Timer.periodic(const Duration(seconds: 15),
        (_) => ref.invalidate(fleetProvider));
    _anim = Timer.periodic(
        const Duration(seconds: 1),
        (_) => ref
            .read(liveMapControllerProvider.notifier)
            .tick(const Duration(seconds: 1)));
  }

  @override
  void dispose() {
    _poll?.cancel();
    _anim?.cancel();
    _map.dispose();
    super.dispose();
  }

  void _fitFleet(List<AnimatedAircraft> list) {
    final pts = list.map((e) => e.position).toList();
    if (pts.isEmpty) return;
    _map.fitCamera(
        CameraFit.coordinates(coordinates: pts, padding: const EdgeInsets.all(48)));
  }

  Future<void> _openDetail(BuildContext context, AnimatedAircraft a) async {
    ref.read(selectedAircraftIdProvider.notifier).state = a.aircraft.id;
    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) => Consumer(builder: (ctx, r, _) {
        final flight = r.watch(selectedFlightProvider);
        return BoardingPassSheet(
          aircraft: a.aircraft,
          flight: flight.asData?.value,
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
    final selectedFlight = ref.watch(selectedFlightProvider).asData?.value;

    final trajectory = <LatLng>[
      if (selectedFlight?.departureAirport != null)
        selectedFlight!.departureAirport!.position,
      if (selectedFlight?.arrivalIntendedAirport != null)
        selectedFlight!.arrivalIntendedAirport!.position,
    ];

    return Stack(
      children: [
        FlutterMap(
          mapController: _map,
          options: const MapOptions(
            initialCenter: LatLng(54, 15),
            initialZoom: 4,
          ),
          children: [
            TileLayer(
              urlTemplate:
                  'https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}.png',
              subdomains: const ['a', 'b', 'c', 'd'],
              userAgentPackageName: 'com.alexcande.onairmonitor',
            ),
            if (trajectory.length == 2)
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
                        onTap: () => _openDetail(context, a)),
                  ),
              ],
            ),
            const RichAttributionWidget(attributions: [
              TextSourceAttribution('© OpenStreetMap contributors © CARTO'),
            ]),
          ],
        ),
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
