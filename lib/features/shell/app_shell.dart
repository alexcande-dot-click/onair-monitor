import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/dashboard_providers.dart';
import 'account_switcher.dart';

/// Navigation entries. Only Dashboard is active in Phase 1; the rest are
/// listed (disabled) so the IA is visible and lands incrementally.
const _navItems = <(String, IconData, bool)>[
  ('Dashboard', Icons.dashboard, true),
  ('Live Map', Icons.map, false),
  ('Crew', Icons.people, false),
  ('Aircraft', Icons.flight, false),
  ('Jobs', Icons.assignment, false),
  ('Economics', Icons.bar_chart, false),
  ('FBO', Icons.warehouse, false),
  ('Airports', Icons.location_on, false),
  ('About', Icons.info_outline, false),
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
        DrawerHeader(
          child: Row(children: [
            Image.asset('assets/logo.png', height: 40),
            const SizedBox(width: 12),
            const Text('OnAir Monitor',
                style: TextStyle(fontWeight: FontWeight.w700)),
          ]),
        ),
        Expanded(
          child: ListView(
            children: [
              for (final (label, icon, enabled) in _navItems)
                ListTile(
                  leading: Icon(icon),
                  title: Text(label),
                  selected: label == current,
                  enabled: enabled,
                  onTap: enabled ? () => Navigator.of(context).maybePop() : null,
                ),
            ],
          ),
        ),
        AccountSwitcher(onAddAccount: onAddAccount),
      ],
    );
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
