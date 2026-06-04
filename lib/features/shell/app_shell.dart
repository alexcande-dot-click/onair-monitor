import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../core/app_info.dart';
import '../../core/router/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/app_providers.dart';
import '../../providers/dashboard_providers.dart';
import '../about/about_screen.dart' show openUrl;
import 'account_switcher.dart';

/// Navigation entries. A non-null route means the tab is active; null means
/// it's listed but disabled (lands in a later phase).
const _navItems = <(String, IconData, String?)>[
  ('Dashboard', Icons.dashboard, Routes.dashboard),
  ('Live Map', Icons.map, Routes.liveMap),
  ('Crew', Icons.people, Routes.crew),
  ('Aircraft', Icons.flight, Routes.aircraft),
  ('Economics', Icons.bar_chart, Routes.economics),
  ('FBO', Icons.warehouse, Routes.fbo),
  ('Airports', Icons.location_on, Routes.airports),
  ('About', Icons.info_outline, Routes.about),
];

class AppShell extends ConsumerWidget {
  const AppShell({
    super.key,
    required this.title,
    required this.body,
    required this.onOpenNotifications,
  });

  final String title;
  final Widget body;
  final VoidCallback onOpenNotifications;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unread = ref.watch(unreadCountProvider).maybeWhen(
          data: (n) => n,
          orElse: () => 0,
        );
    final wide = MediaQuery.sizeOf(context).width >= 900;

    final drawer = _DrawerContents(current: title);

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
      body: Column(
        children: [
          const _UpdateBanner(),
          Expanded(
            child: wide
                ? Row(children: [
                    SizedBox(
                        width: 280,
                        child:
                            Material(color: AppColors.surface, child: drawer)),
                    const VerticalDivider(width: 1),
                    Expanded(child: body),
                  ])
                : body,
          ),
        ],
      ),
    );
  }
}

/// Thin banner shown when a newer version is published on GitHub. "Later"
/// hides it for a day; "Update" opens the latest release page.
class _UpdateBanner extends ConsumerWidget {
  const _UpdateBanner();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final version = ref.watch(updateBannerProvider).asData?.value;
    if (version == null) return const SizedBox.shrink();
    return Material(
      color: AppColors.electricBlue,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 4, 6),
        child: Row(children: [
          const Icon(Icons.system_update, size: 18, color: Color(0xFF04222E)),
          const SizedBox(width: 8),
          Expanded(
            child: Text('Update available: v$version',
                style: const TextStyle(
                    color: Color(0xFF04222E), fontWeight: FontWeight.w600)),
          ),
          TextButton(
            onPressed: () => openUrl(kLatestReleaseUrl),
            child: const Text('Update',
                style: TextStyle(color: Color(0xFF04222E))),
          ),
          TextButton(
            onPressed: () async {
              await ref
                  .read(appPrefsProvider)
                  .dismissBannerFor(const Duration(days: 1));
              ref.invalidate(updateBannerProvider);
            },
            child: const Text('Later',
                style: TextStyle(color: Color(0xFF04222E))),
          ),
        ]),
      ),
    );
  }
}

class _DrawerContents extends StatelessWidget {
  const _DrawerContents({required this.current});
  final String current;

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
        const AccountSwitcher(),
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
