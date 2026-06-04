import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/app_info.dart';
import '../../core/router/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/dashboard_providers.dart';
import 'account_switcher.dart';

/// Navigation entries. A non-null route means the tab is active; null means
/// it's listed but disabled (lands in a later phase).
const _navItems = <(String, IconData, String?)>[
  ('Dashboard', Icons.dashboard, Routes.dashboard),
  ('Live Map', Icons.map, Routes.liveMap),
  ('Crew', Icons.people, Routes.crew),
  ('Aircraft', Icons.flight, Routes.aircraft),
  ('Jobs', Icons.assignment, Routes.jobs),
  ('Economics', Icons.bar_chart, Routes.economics),
  ('FBO', Icons.warehouse, Routes.fbo),
  ('Airports', Icons.location_on, null),
  ('About', Icons.info_outline, null),
];

class AppShell extends ConsumerWidget {
  const AppShell({
    super.key,
    required this.title,
    required this.body,
    required this.onOpenNotifications,
    this.onAddAccount,
  });

  final String title;
  final Widget body;
  final VoidCallback onOpenNotifications;
  final VoidCallback? onAddAccount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unread = ref.watch(unreadCountProvider).maybeWhen(
          data: (n) => n,
          orElse: () => 0,
        );
    final wide = MediaQuery.sizeOf(context).width >= 900;

    final drawer = _DrawerContents(
      current: title,
      onAddAccount: onAddAccount ?? () {},
    );

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('OnAir Monitor', style: TextStyle(fontSize: 16)),
            Text(title,
                style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
          ],
        ),
        actions: [
          _BellButton(unread: unread, onTap: onOpenNotifications),
          const SizedBox(width: 8),
        ],
      ),
      drawer: wide ? null : Drawer(child: drawer),
      body: wide
          ? Row(children: [
              SizedBox(
                  width: 280,
                  child: Material(color: AppColors.surface, child: drawer)),
              const VerticalDivider(width: 1),
              Expanded(child: body),
            ])
          : body,
    );
  }
}

class _DrawerContents extends StatelessWidget {
  const _DrawerContents({required this.current, required this.onAddAccount});
  final String current;
  final VoidCallback onAddAccount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Row(children: [
              Image.asset('assets/logo.png', height: 36),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('OnAir Monitor',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 16)),
                  Text('Version $kAppVersion',
                      style: TextStyle(color: AppColors.textMuted, fontSize: 12)),
                ],
              ),
            ]),
          ),
        ),
        const Divider(height: 1),
        Expanded(
          child: ListView(
            children: [
              for (final (label, icon, route) in _navItems)
                ListTile(
                  leading: Icon(icon),
                  title: Text(label),
                  selected: label == current,
                  enabled: route != null,
                  onTap: route == null ? null : () => _go(context, route),
                ),
            ],
          ),
        ),
        AccountSwitcher(onAddAccount: onAddAccount),
      ],
    );
  }

  /// Close the drawer if it's open (narrow layout) and navigate.
  void _go(BuildContext context, String route) {
    // Capture before popping — the tile's context can become defunct.
    final router = GoRouter.of(context);
    final current = GoRouterState.of(context).matchedLocation;
    final scaffold = Scaffold.maybeOf(context);
    if (scaffold?.isDrawerOpen ?? false) {
      Navigator.of(context).pop();
    }
    if (current != route) router.go(route);
  }
}

class _BellButton extends StatelessWidget {
  const _BellButton({required this.unread, required this.onTap});
  final int unread;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: onTap,
        ),
        if (unread > 0)
          Positioned(
            right: 6,
            top: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
              decoration: BoxDecoration(
                color: AppColors.danger,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text('$unread',
                  style: const TextStyle(fontSize: 11, color: Colors.white)),
            ),
          ),
      ],
    );
  }
}
