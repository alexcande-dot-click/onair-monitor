import 'package:flutter/material.dart';
import '../../core/format/formatters.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/mission.dart';
import 'jobs_logic.dart';

class JobListTile extends StatelessWidget {
  const JobListTile({super.key, required this.mission, required this.onTap});
  final Mission mission;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final exp = mission.expirationDate;
    final sub = [
      formatMoney(mission.effectivePay),
      if (mission.state == 0 && exp != null) 'expires ${relativeUntil(exp)}',
    ].join(' · ');
    return ListTile(
      leading: Icon(missionCategoryIcon(mission.category)),
      title: Text(routeSummary(mission)),
      subtitle: Text('${missionCategoryLabel(mission.category)} · $sub'),
      trailing: const Icon(Icons.chevron_right, color: AppColors.textMuted),
      onTap: onTap,
    );
  }
}
