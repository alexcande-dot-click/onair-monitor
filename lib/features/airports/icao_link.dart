import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import 'airport_detail_screen.dart';

/// A tappable ICAO code that pushes the airport detail. Plain "—" when empty.
class IcaoLink extends StatelessWidget {
  const IcaoLink(this.icao, {super.key});
  final String? icao;

  @override
  Widget build(BuildContext context) {
    final code = icao?.trim() ?? '';
    if (code.isEmpty) return const Text('—');
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => AirportDetailScreen(icao: code))),
      child: Text(code,
          style: const TextStyle(
              color: AppColors.electricBlue, fontWeight: FontWeight.w600)),
    );
  }
}
