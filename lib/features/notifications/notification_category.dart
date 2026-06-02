import 'package:flutter/material.dart';

String categoryLabel(int category) => switch (category) {
      0 => 'Route',
      6 => 'Job',
      7 => 'Market',
      _ => 'Update',
    };

IconData categoryIcon(int category) => switch (category) {
      0 => Icons.flight_land,
      6 => Icons.assignment_turned_in,
      7 => Icons.store,
      _ => Icons.notifications,
    };
