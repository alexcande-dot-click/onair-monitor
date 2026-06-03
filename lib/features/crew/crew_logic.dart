import '../../core/format/formatters.dart';
import '../../domain/models/employee.dart';

List<Employee> filterCrew(
  List<Employee> all, {
  CrewCategory? category,
  String query = '',
}) {
  final q = query.trim().toLowerCase();
  return all.where((e) {
    if (category != null && e.category != category) return false;
    if (q.isNotEmpty && !e.pseudo.toLowerCase().contains(q)) return false;
    return true;
  }).toList();
}

bool isUnassignedFlag(Employee e, Set<String> assignedIds) =>
    e.isAssignable && !assignedIds.contains(e.id);

List<Employee> sortCrew(List<Employee> filtered, Set<String> assignedIds) {
  final list = [...filtered];
  list.sort((a, b) {
    final fa = isUnassignedFlag(a, assignedIds);
    final fb = isUnassignedFlag(b, assignedIds);
    if (fa != fb) return fa ? 1 : -1; // flagged after non-flagged
    return a.pseudo.toLowerCase().compareTo(b.pseudo.toLowerCase());
  });
  return list;
}

/// Index of the first flagged-unassigned employee, or -1 if none.
int firstUnassignedIndex(List<Employee> sorted, Set<String> assignedIds) {
  for (var i = 0; i < sorted.length; i++) {
    if (isUnassignedFlag(sorted[i], assignedIds)) return i;
  }
  return -1;
}

String crewStatusLabel(Employee e, {DateTime? now}) {
  final ref = now ?? DateTime.now();
  if (e.statusCode == 1 && e.busyUntil != null && e.busyUntil!.isAfter(ref)) {
    return 'Asleep · wakes in ${relativeUntil(e.busyUntil!, now: ref)}';
  }
  return switch (e.statusCode) {
    0 => 'Available',
    1 => 'Sleeping',
    7 => 'Off duty',
    _ => '—',
  };
}
