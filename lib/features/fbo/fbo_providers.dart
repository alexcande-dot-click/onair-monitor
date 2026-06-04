import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../../domain/models/fbo.dart';
import '../../providers/providers.dart';

final fbosProvider = FutureProvider.autoDispose<List<Fbo>>((ref) async {
  ref.watch(activeAccountRevisionProvider);
  final id = ref.watch(accountManagerProvider).activeCompanyId;
  if (id == null) return const [];
  return ref.watch(fboRepositoryProvider).fetchFbos(id);
});

final fboQueryProvider = StateProvider<String>((ref) => '');
