import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/format/formatters.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/dashboard_providers.dart';
import '../../providers/providers.dart';
import 'notification_category.dart';
import 'notification_logic.dart';
import 'unread.dart';

class NotificationsScreen extends ConsumerWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemsAsync = ref.watch(notificationsProvider);
    final lastViewed = ref.watch(lastViewedProvider).asData?.value ??
        DateTime.fromMillisecondsSinceEpoch(0);
    final multi = (ref.watch(allAccountsProvider).asData?.value.length ?? 1) > 1;

    return itemsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => _Retry(onRetry: () => ref.invalidate(notificationsProvider)),
      data: (items) {
        final unread = unreadCount(items, lastViewed);
        return Column(
          children: [
            _HeaderBar(
              unread: unread,
              onReadAll: unread == 0
                  ? null
                  : () async {
                      final id = ref.read(accountManagerProvider).activeCompanyId;
                      if (id == null) return;
                      await ref
                          .read(appDatabaseProvider)
                          .setLastViewedEventTime(id, latestEventTime(items));
                      ref.invalidate(lastViewedProvider);
                      ref.invalidate(unreadCountProvider);
                    },
            ),
            Expanded(
              child: items.isEmpty
                  ? const Center(child: Text('No notifications yet'))
                  : RefreshIndicator(
                      onRefresh: () async {
                        ref.invalidate(notificationsProvider);
                        await ref.read(notificationsProvider.future);
                      },
                      child: ListView.separated(
                        itemCount: items.length,
                        separatorBuilder: (_, _) => const Divider(height: 1),
                        itemBuilder: (context, i) {
                          final item = items[i];
                          final isUnread = item.eventTime.isAfter(lastViewed);
                          return ListTile(
                            leading: Icon(categoryIcon(item.category),
                                color: isUnread
                                    ? AppColors.electricBlue
                                    : AppColors.textMuted),
                            title: Text(item.description,
                                style: TextStyle(
                                    fontWeight: isUnread
                                        ? FontWeight.w700
                                        : FontWeight.w400)),
                            subtitle: Text([
                              categoryLabel(item.category),
                              relativeTime(item.eventTime),
                              if (multi) 'multi',
                            ].join(' · ')),
                            trailing: isUnread
                                ? const Icon(Icons.circle,
                                    size: 10, color: AppColors.electricBlue)
                                : null,
                          );
                        },
                      ),
                    ),
            ),
          ],
        );
      },
    );
  }
}

class _HeaderBar extends StatelessWidget {
  const _HeaderBar({required this.unread, required this.onReadAll});
  final int unread;
  final VoidCallback? onReadAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 8, 0),
      child: Row(
        children: [
          Text(unread > 0 ? '$unread unread' : 'All caught up',
              style: const TextStyle(color: AppColors.textMuted)),
          const Spacer(),
          TextButton.icon(
            key: const Key('readAllButton'),
            onPressed: onReadAll,
            icon: const Icon(Icons.done_all, size: 18),
            label: const Text('Read all'),
          ),
        ],
      ),
    );
  }
}

class _Retry extends StatelessWidget {
  const _Retry({required this.onRetry});
  final VoidCallback onRetry;
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Could not load notifications.'),
            const SizedBox(height: 8),
            FilledButton(onPressed: onRetry, child: const Text('Retry')),
          ],
        ),
      );
}
