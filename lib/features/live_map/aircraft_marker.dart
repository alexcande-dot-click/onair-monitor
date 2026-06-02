import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../../domain/models/aircraft.dart';
import 'live_map_providers.dart';

/// A heading-rotated aircraft marker, tappable to open its detail card.
class AircraftMarker extends StatelessWidget {
  const AircraftMarker({super.key, required this.aircraft, required this.onTap});
  final Aircraft aircraft;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final radians = aircraft.heading * math.pi / 180;
    return GestureDetector(
      onTap: onTap,
      child: Transform.rotate(
        angle: radians,
        child: Icon(Icons.flight, color: markerColor(aircraft), size: 28),
      ),
    );
  }
}
