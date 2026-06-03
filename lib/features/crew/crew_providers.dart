import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../domain/models/employee.dart';
import '../../providers/providers.dart';

final employeesProvider = FutureProvider.autoDispose<List<Employee>>((ref) async {
  ref.watch(activeAccountRevisionProvider);
  final id = ref.watch(accountManagerProvider).activeCompanyId;
  if (id == null) return const [];
  return ref.watch(employeeRepositoryProvider).fetchEmployees(id);
});

/// null = All.
final crewCategoryFilterProvider = StateProvider<CrewCategory?>((ref) => null);
final crewQueryProvider = StateProvider<String>((ref) => '');

/// employeeId -> aircraftId (device-only). Shared with the Aircraft tab.
final crewAssignmentsProvider = FutureProvider<Map<String, String>>((ref) {
  return ref.watch(appDatabaseProvider).readCrewAssignments();
});
