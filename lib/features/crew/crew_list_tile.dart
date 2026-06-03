import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/employee.dart';
import 'crew_logic.dart';

IconData crewCategoryIcon(CrewCategory c) => switch (c) {
      CrewCategory.pilot => Icons.flight,
      CrewCategory.cabinCrew => Icons.room_service,
      CrewCategory.mechanic => Icons.build,
      CrewCategory.other => Icons.person,
    };

class CrewListTile extends StatelessWidget {
  const CrewListTile({
    super.key,
    required this.employee,
    required this.tail,
    required this.flagged,
    required this.onTap,
  });

  final Employee employee;
  final String? tail; // resolved aircraft tail for an assignable, assigned crew
  final bool flagged; // assignable + unassigned
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final parts = <String>[crewStatusLabel(employee)];
    if (employee.isAssignable) {
      final ap = employee.currentAirport?.icao;
      if (ap != null) parts.add('@$ap');
      parts.add(tail != null ? '✈ $tail' : 'Unassigned');
    } else {
      final home = employee.homeAirport?.icao;
      if (home != null) parts.add('@$home');
    }

    return ListTile(
      tileColor: flagged ? AppColors.surfaceAlt : null,
      leading: Icon(crewCategoryIcon(employee.category),
          color: flagged ? AppColors.electricBlue : AppColors.textMuted),
      title: Text(employee.pseudo),
      subtitle: Text(parts.join(' · ')),
      trailing: employee.isOnline
          ? const Icon(Icons.circle, size: 10, color: AppColors.electricGreen)
          : null,
      onTap: onTap,
    );
  }
}
