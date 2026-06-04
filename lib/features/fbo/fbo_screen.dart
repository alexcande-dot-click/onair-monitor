import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'fbo_detail_screen.dart';
import 'fbo_list_tile.dart';
import 'fbo_logic.dart';
import 'fbo_providers.dart';

class FboScreen extends ConsumerWidget {
  const FboScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(fboQueryProvider);
    final async = ref.watch(fbosProvider);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: TextField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search by name / ICAO',
                border: OutlineInputBorder()),
            onChanged: (v) => ref.read(fboQueryProvider.notifier).state = v,
          ),
        ),
        Expanded(
          child: async.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Could not load FBOs.\n$e')),
            data: (all) {
              final list = filterFbos(all, query);
              if (list.isEmpty) return const Center(child: Text('No FBOs'));
              return RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(fbosProvider);
                  await ref.read(fbosProvider.future);
                },
                child: ListView.separated(
                  itemCount: list.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (context, i) => FboListTile(
                    fbo: list[i],
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => FboDetailScreen(fbo: list[i]))),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
