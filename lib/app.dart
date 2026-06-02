import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
import 'providers/providers.dart';

class OnAirMonitorApp extends ConsumerWidget {
  const OnAirMonitorApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(foregroundPollerProvider); // keep the 60s poller alive
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'OnAir Monitor',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      routerConfig: router,
    );
  }
}
