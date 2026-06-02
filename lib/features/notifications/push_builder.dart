import '../../domain/models/onair_notification.dart';

class PushItem {
  const PushItem({
    required this.dedupKey,
    required this.title,
    required this.body,
    required this.companyId,
  });
  final String dedupKey; // stable id for the OS notification
  final String title;
  final String body;
  final String companyId;
}

/// Up to [cap] individual pushes, then one "+N more" summary if there were more.
List<PushItem> buildPushes(
  List<OnairNotification> newItems, {
  required String companyId,
  required String companyName,
  int cap = 5,
}) {
  if (newItems.isEmpty) return const [];
  final title = 'OnAir Monitor – $companyName';
  final shown = newItems.take(cap).toList();
  final pushes = <PushItem>[
    for (final n in shown)
      PushItem(dedupKey: n.id, title: title, body: n.description, companyId: companyId),
  ];
  final extra = newItems.length - shown.length;
  if (extra > 0) {
    pushes.add(PushItem(
      dedupKey: 'summary-$companyId-${newItems.last.id}',
      title: title,
      body: '+$extra more',
      companyId: companyId,
    ));
  }
  return pushes;
}
