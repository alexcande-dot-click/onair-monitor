import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/aircraft.dart';
import '../../domain/models/employee.dart';

enum AircraftStatusFilter { all, flying, grounded }

/// employeeId->aircraftId  =>  aircraftId->count
Map<String, int> crewCountByAircraft(Map<String, String> assignments) {
  final counts = <String, int>{};
  for (final aircraftId in assignments.values) {
    counts[aircraftId] = (counts[aircraftId] ?? 0) + 1;
  }
  return counts;
}

/// Names of employees locally assigned to [aircraftId], sorted A–Z.
List<String> crewNamesFor(
  String aircraftId,
  Map<String, String> assignments,
  List<Employee> employees,
) {
  final ids = assignments.entries
      .where((e) => e.value == aircraftId)
      .map((e) => e.key)
      .toSet();
  final names = employees
      .where((e) => ids.contains(e.id))
      .map((e) => e.pseudo)
      .toList()
    ..sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
  return names;
}

List<Aircraft> filterAircraft(
  List<Aircraft> all, {
  AircraftStatusFilter filter = AircraftStatusFilter.all,
  String query = '',
}) {
  final q = query.trim().toLowerCase();
  return all.where((a) {
    switch (filter) {
      case AircraftStatusFilter.flying:
        if (!a.isFlying) return false;
      case AircraftStatusFilter.grounded:
        if (a.isFlying) return false;
      case AircraftStatusFilter.all:
        break;
    }
    if (q.isNotEmpty && !a.identifier.toLowerCase().contains(q)) return false;
    return true;
  }).toList();
}

bool isUnnotedFlag(Aircraft a, Set<String> notedIds) => !notedIds.contains(a.id);

List<Aircraft> sortAircraft(List<Aircraft> filtered, Set<String> notedIds) {
  final list = [...filtered];
  list.sort((a, b) {
    final fa = isUnnotedFlag(a, notedIds);
    final fb = isUnnotedFlag(b, notedIds);
    if (fa != fb) return fa ? 1 : -1; // un-noted after noted
    return a.identifier.toLowerCase().compareTo(b.identifier.toLowerCase());
  });
  return list;
}

int firstUnnotedIndex(List<Aircraft> sorted, Set<String> notedIds) {
  for (var i = 0; i < sorted.length; i++) {
    if (isUnnotedFlag(sorted[i], notedIds)) return i;
  }
  return -1;
}

Color aircraftStatusColor(Aircraft a) {
  if (a.mustDoMaintenance) return AppColors.danger;
  if (a.isFlying) return AppColors.electricBlue;
  return AppColors.electricGreen;
}

String aircraftStatusLabel(Aircraft a) {
  if (a.mustDoMaintenance) return 'Maintenance';
  if (a.isFlying) return 'Flying';
  return 'Grounded';
}
