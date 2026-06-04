import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/providers.dart';
import '../setup/setup_screen.dart';

class AccountSwitcher extends ConsumerWidget {
  const AccountSwitcher({super.key});

  /// Push the setup form to add another company. Imperative push bypasses the
  /// router redirect (which sends /setup → dashboard when an account exists).
  void _addCompany(BuildContext context) {
    final nav = Navigator.of(context);
    nav.maybePop(); // close the drawer
    nav.push(MaterialPageRoute(
      builder: (_) => SetupScreen(onAccountAdded: () => nav.maybePop()),
    ));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final active = ref.watch(activeAccountProvider);
    final all = ref.watch(allAccountsProvider);

    return Material(
      color: AppColors.surfaceAlt,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('ACTIVE COMPANY',
                style: TextStyle(color: AppColors.textMuted, fontSize: 11)),
            const SizedBox(height: 6),
            active.maybeWhen(
              data: (a) => Text(a?.name ?? '—',
                  style: const TextStyle(fontWeight: FontWeight.w700)),
              orElse: () => const Text('…'),
            ),
            const SizedBox(height: 8),
            all.maybeWhen(
              data: (accounts) => Column(
                children: [
                  for (final a in accounts)
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.business, size: 18),
                      title: Text(a.name),
                      onTap: () async {
                        await ref
                            .read(accountManagerProvider)
                            .switchTo(a.companyId);
                        ref.read(activeAccountRevisionProvider.notifier).state++;
                        if (context.mounted) Navigator.of(context).maybePop();
                      },
                    ),
                ],
              ),
              orElse: () => const SizedBox.shrink(),
            ),
            TextButton.icon(
              onPressed: () => _addCompany(context),
              icon: const Icon(Icons.add),
              label: const Text('Add company'),
            ),
          ],
        ),
      ),
    );
  }
}
