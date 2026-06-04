import 'package:flutter/material.dart';
import '../../core/format/formatters.dart';
import '../../core/theme/app_colors.dart';
import '../../domain/models/fbo.dart';

class FboDetailScreen extends StatelessWidget {
  const FboDetailScreen({super.key, required this.fbo});
  final Fbo fbo;

  @override
  Widget build(BuildContext context) {
    final ap = fbo.airport;
    return Scaffold(
      appBar: AppBar(title: Text(fbo.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('@${ap?.icao ?? '—'}${ap?.name != null ? ' – ${ap!.name}' : ''}',
              style: const TextStyle(color: AppColors.textMuted)),
          const Divider(height: 32),
          const Text('Fuel', style: TextStyle(fontWeight: FontWeight.w700)),
          _fuelRow('100LL', fbo.fuel100LLQuantity, fbo.fuel100LLCapacity,
              fbo.fuel100LLSellPrice, fbo.sells100LL),
          _fuelRow('Jet-A', fbo.fuelJetQuantity, fbo.fuelJetCapacity,
              fbo.fuelJetSellPrice, fbo.sellsJet),
          const Divider(height: 32),
          const Text('Parking', style: TextStyle(fontWeight: FontWeight.w700)),
          _kv('Hangar', '${fbo.aircraftHangarCapacity}'),
          _kv('Tie-down', '${fbo.aircraftTieDownCapacity}'),
          const Divider(height: 32),
          const Text('Capacity', style: TextStyle(fontWeight: FontWeight.w700)),
          _kv('Sleeping', '${fbo.sleepingCapacity.round()}'),
          _kv('Cargo', '${fbo.cargoWeightCapacity.round()} lbs'),
          const Divider(height: 32),
          const Text('Workshops', style: TextStyle(fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          if (fbo.workshopNames.isEmpty)
            const Text('None', style: TextStyle(color: AppColors.textMuted))
          else
            Wrap(
              spacing: 6,
              children: [for (final w in fbo.workshopNames) Chip(label: Text(w))],
            ),
          if (fbo.workshopUnderConstruction)
            const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text('Workshop under construction',
                  style: TextStyle(color: AppColors.electricBlue)),
            ),
        ],
      ),
    );
  }

  Widget _fuelRow(String label, double qty, double cap, double price, bool selling) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
            _kv('In stock', '${qty.round()} / ${cap.round()} gal'),
            _kv('Sell price', selling ? '${formatMoney(price)}/gal' : 'not selling'),
          ],
        ),
      );

  Widget _kv(String k, String v) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(k, style: const TextStyle(color: AppColors.textMuted)),
          Text(v),
        ]),
      );
}
