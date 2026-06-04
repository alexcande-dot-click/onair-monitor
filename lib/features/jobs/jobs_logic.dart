import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/mission.dart';
import '../../domain/models/work_order.dart';

String missionCategoryLabel(MissionCategory c) => switch (c) {
      MissionCategory.cargo => 'Cargo',
      MissionCategory.charter => 'Charter',
      MissionCategory.sightseeing => 'Sightseeing',
      MissionCategory.fighter => 'Fighter',
      MissionCategory.rescue => 'Rescue',
      MissionCategory.freelance => 'Freelance',
      MissionCategory.other => 'Other',
    };

IconData missionCategoryIcon(MissionCategory c) => switch (c) {
      MissionCategory.cargo => Icons.inventory_2,
      MissionCategory.charter => Icons.people,
      MissionCategory.sightseeing => Icons.photo_camera,
      MissionCategory.fighter => Icons.military_tech,
      MissionCategory.rescue => Icons.emergency,
      MissionCategory.freelance => Icons.handshake,
      MissionCategory.other => Icons.assignment,
    };

String statusEnumLabel(WorkOrderStatus s) => switch (s) {
      WorkOrderStatus.pending => 'Pending',
      WorkOrderStatus.inProgress => 'In progress',
      WorkOrderStatus.completed => 'Completed',
      WorkOrderStatus.cancelled => 'Cancelled',
      WorkOrderStatus.unknown => '—',
    };

String workOrderStatusLabel(WorkOrder w) {
  if (w.isTicking && w.status == WorkOrderStatus.inProgress) return 'Ongoing';
  return statusEnumLabel(w.status);
}

String workOrderActionLabel(WorkOrderAction a) => 'Action ${a.order}';

String workOrderActionSubtitle(WorkOrderAction a) {
  final parts = <String>[statusEnumLabel(a.status)];
  if (a.fuelToLoadGallons > 0) parts.add('${a.fuelToLoadGallons.round()} gal fuel');
  return parts.join(' · ');
}

Color workOrderStatusColor(WorkOrder w) => switch (w.status) {
      WorkOrderStatus.inProgress => AppColors.electricBlue,
      WorkOrderStatus.pending => AppColors.textMuted,
      WorkOrderStatus.completed => AppColors.electricGreen,
      WorkOrderStatus.cancelled => AppColors.danger,
      WorkOrderStatus.unknown => AppColors.textMuted,
    };

bool _missionMatches(Mission m, String q) {
  if (q.isEmpty) return true;
  final icaos = <String?>[
    m.mainAirport?.icao,
    for (final c in m.cargos) ...[
      c.departureAirport?.icao,
      c.destinationAirport?.icao
    ],
    for (final c in m.charters) ...[
      c.departureAirport?.icao,
      c.destinationAirport?.icao
    ],
  ];
  if (icaos.any((i) => i != null && i.toLowerCase().contains(q))) return true;
  return missionCategoryLabel(m.category).toLowerCase().contains(q);
}

List<Mission> filterJobs(
  List<Mission> all, {
  MissionCategory? category,
  String query = '',
}) {
  final q = query.trim().toLowerCase();
  return all
      .where((m) =>
          (category == null || m.category == category) && _missionMatches(m, q))
      .toList();
}

int _expAsc(Mission a, Mission b) {
  final ea = a.expirationDate, eb = b.expirationDate;
  if (ea == null && eb == null) return 0;
  if (ea == null) return 1; // nulls last
  if (eb == null) return -1;
  return ea.compareTo(eb);
}

List<Mission> sortPending(List<Mission> all) => [...all]..sort(_expAsc);

List<Mission> sortCompleted(List<Mission> all) => [...all]..sort((a, b) {
      final ea = a.completionDate, eb = b.completionDate;
      if (ea == null && eb == null) return 0;
      if (ea == null) return 1; // nulls last
      if (eb == null) return -1;
      return eb.compareTo(ea); // newest-first
    });

List<WorkOrder> filterWorkOrders(
  List<WorkOrder> all, {
  WorkOrderStatus? status,
  String query = '',
  Map<String, String> tailsById = const {},
}) {
  final q = query.trim().toLowerCase();
  return all.where((w) {
    if (status != null && w.status != status) return false;
    if (q.isEmpty) return true;
    final tail = tailsById[w.aircraftId]?.toLowerCase() ?? '';
    return w.name.toLowerCase().contains(q) || tail.contains(q);
  }).toList();
}

/// Best display title for a mission row: a real DEP → DEST route from its legs,
/// falling back to the main airport, then the description (completed jobs).
String routeSummary(Mission m) {
  final deps = <String>{};
  final dests = <String>{};
  for (final c in m.cargos) {
    final d = c.departureAirport?.icao;
    final e = c.destinationAirport?.icao;
    if (d != null) deps.add(d);
    if (e != null) dests.add(e);
  }
  for (final c in m.charters) {
    final d = c.departureAirport?.icao;
    final e = c.destinationAirport?.icao;
    if (d != null) deps.add(d);
    if (e != null) dests.add(e);
  }
  if (dests.isNotEmpty) {
    final dep = deps.length == 1
        ? deps.first
        : (m.mainAirport?.icao ?? (deps.isNotEmpty ? deps.first : '?'));
    final destList = dests.toList();
    final destStr =
        destList.length <= 2 ? destList.join('/') : '${destList.take(2).join('/')}+';
    return '$dep → $destStr';
  }
  if (m.mainAirport?.icao != null) return m.mainAirport!.icao!;
  if (m.description.isNotEmpty) return m.description;
  return '—';
}
