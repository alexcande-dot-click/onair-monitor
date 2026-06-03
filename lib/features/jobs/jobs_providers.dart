import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../domain/models/mission.dart';
import '../../domain/models/work_order.dart';
import '../../providers/providers.dart';

enum JobSegment { pending, completed }

final pendingJobsProvider = FutureProvider.autoDispose<List<Mission>>((ref) async {
  ref.watch(activeAccountRevisionProvider);
  final id = ref.watch(accountManagerProvider).activeCompanyId;
  if (id == null) return const [];
  return ref.watch(jobsRepositoryProvider).fetchPending(id);
});

final completedJobsProvider =
    FutureProvider.autoDispose<List<Mission>>((ref) async {
  ref.watch(activeAccountRevisionProvider);
  final id = ref.watch(accountManagerProvider).activeCompanyId;
  if (id == null) return const [];
  return ref.watch(jobsRepositoryProvider).fetchCompleted(id);
});

final workOrdersProvider =
    FutureProvider.autoDispose<List<WorkOrder>>((ref) async {
  ref.watch(activeAccountRevisionProvider);
  final id = ref.watch(accountManagerProvider).activeCompanyId;
  if (id == null) return const [];
  return ref.watch(workOrderRepositoryProvider).fetchWorkOrders(id);
});

final jobSegmentProvider = StateProvider<JobSegment>((ref) => JobSegment.pending);
final jobCategoryFilterProvider = StateProvider<MissionCategory?>((ref) => null);
final jobQueryProvider = StateProvider<String>((ref) => '');
final workOrderStatusFilterProvider =
    StateProvider<WorkOrderStatus?>((ref) => null);
final workOrderQueryProvider = StateProvider<String>((ref) => '');
