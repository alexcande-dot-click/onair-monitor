import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'airport_detail_screen.dart';
import 'airports_providers.dart';
import 'relevant_airport_tile.dart';

class AirportsScreen extends ConsumerStatefulWidget {
  const AirportsScreen({super.key});
  @override
  ConsumerState<AirportsScreen> createState() => _AirportsScreenState();
}

class _AirportsScreenState extends ConsumerState<AirportsScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _search() {
    final code = _controller.text.trim().toUpperCase();
    if (code.isEmpty) return;
    Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => AirportDetailScreen(icao: code)));
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(relevantAirportsProvider);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
          child: TextField(
            controller: _controller,
            textInputAction: TextInputAction.search,
            textCapitalization: TextCapitalization.characters,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Enter ICAO (e.g. EETN)',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                  icon: const Icon(Icons.arrow_forward), onPressed: _search),
            ),
            onSubmitted: (_) => _search(),
          ),
        ),
        Expanded(
          child: async.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => Center(child: Text('Could not load airports.\n$e')),
            data: (list) {
              if (list.isEmpty) {
                return const Center(child: Text('No related airports yet'));
              }
              return RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(relevantAirportsProvider);
                  await ref.read(relevantAirportsProvider.future);
                },
                child: ListView.separated(
                  itemCount: list.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (context, i) => RelevantAirportTile(
                    airport: list[i],
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => AirportDetailScreen(icao: list[i].icao))),
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
