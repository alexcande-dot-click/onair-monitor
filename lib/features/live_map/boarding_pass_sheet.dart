import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/aircraft.dart';
import '../../domain/models/flight.dart';

/// Boarding-pass styled detail card for a tapped aircraft.
class BoardingPassSheet extends StatelessWidget {
  const BoardingPassSheet({
    super.key,
    required this.aircraft,
    required this.flight,
    required this.onClose,
  });

  final Aircraft aircraft;

  /// Latest-flight load state. Only meaningful for flying aircraft.
  final AsyncValue<Flight?> flight;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.surfaceAlt,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.electricBlue.withValues(alpha: 0.3)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: AppColors.electricBlue,
                borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
              ),
              padding: const EdgeInsets.fromLTRB(16, 10, 8, 10),
              child: Row(
                children: [
                  const Icon(Icons.flight, color: Color(0xFF04222E), size: 20),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text('BOARDING PASS · ${aircraft.identifier}',
                        style: const TextStyle(
                            color: Color(0xFF04222E),
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.1)),
                  ),
                  IconButton(
                    key: const Key('closeBoardingPass'),
                    icon: const Icon(Icons.close, color: Color(0xFF04222E)),
                    onPressed: onClose,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _routeSection(),
                  const SizedBox(height: 16),
                  const _Perforation(),
                  const SizedBox(height: 16),
                  _details(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _routeSection() {
    // Grounded aircraft never show a route.
    if (!aircraft.isFlying) {
      final at = aircraft.currentAirport?.icao;
      return Text(at != null ? 'Parked at $at' : 'On the ground',
          style: const TextStyle(color: AppColors.textMuted, fontSize: 16));
    }
    if (flight.isLoading) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: SizedBox(
            height: 26,
            width: 26,
            child: CircularProgressIndicator(strokeWidth: 2.5)),
      );
    }
    final f = flight.asData?.value;
    final dep = f?.departureAirport?.icao;
    final arr = f?.arrivalIntendedAirport?.icao;
    if (dep != null && arr != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _bigCode(dep),
          const Icon(Icons.flight_takeoff, color: AppColors.textMuted),
          _bigCode(arr),
        ],
      );
    }
    return const Text('No active route',
        style: TextStyle(color: AppColors.textMuted, fontSize: 16));
  }

  Widget _details() {
    final f = flight.asData?.value;
    return Wrap(
      spacing: 24,
      runSpacing: 12,
      children: [
        _field('AIRCRAFT', aircraft.aircraftType?.displayName ?? '—'),
        _field('ALT', '${aircraft.altitude.round()} ft'),
        _field('GS', '${aircraft.groundSpeed.round()} kt'),
        _field('HDG', '${aircraft.heading.round()}°'),
        _field('FUEL', '${aircraft.fuelPercent.round()}%'),
        _field('COND', '${aircraft.conditionPercent.round()}%'),
        if (aircraft.isFlying && f?.paxCount != null) _field('PAX', '${f!.paxCount}'),
        if (aircraft.isFlying && (f?.isAI ?? false)) _field('CREW', 'AI'),
      ],
    );
  }

  Widget _bigCode(String code) => Text(code,
      style: const TextStyle(
          fontSize: 30, fontWeight: FontWeight.w800, color: AppColors.textPrimary));

  Widget _field(String label, String value) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: const TextStyle(color: AppColors.textMuted, fontSize: 11)),
          Text(value,
              style: const TextStyle(
                  color: AppColors.textPrimary, fontWeight: FontWeight.w600)),
        ],
      );
}

/// Dashed perforation line like a real boarding pass.
class _Perforation extends StatelessWidget {
  const _Perforation();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, c) {
      final count = (c.maxWidth / 10).floor();
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          count,
          (_) => Container(width: 5, height: 1.5, color: AppColors.textMuted),
        ),
      );
    });
  }
}
