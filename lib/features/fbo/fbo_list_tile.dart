import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/fbo.dart';
import 'fbo_logic.dart';

class FboListTile extends StatelessWidget {
  const FboListTile({super.key, required this.fbo, required this.onTap});
  final Fbo fbo;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final icao = fbo.airport?.icao ?? '—';
    final city = fbo.airport?.city;
    final badge = fuelBadge(fbo);
    return ListTile(
      leading: const Icon(Icons.warehouse),
      title: Text(fbo.name),
      subtitle: Text('@$icao${city != null ? ' · $city' : ''}'),
      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
        if (badge.isNotEmpty)
          Chip(
            label: Text(badge, style: const TextStyle(fontSize: 11)),
            visualDensity: VisualDensity.compact,
            backgroundColor: AppColors.surfaceAlt,
          ),
        if (fbo.hasWorkshop)
          const Padding(
            padding: EdgeInsets.only(left: 4),
            child: Icon(Icons.build, size: 18, color: AppColors.electricBlue),
          ),
      ]),
      onTap: onTap,
    );
  }
}
