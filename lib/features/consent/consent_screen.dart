import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/app_providers.dart';

const _consentText =
    'This app does not send any of your personal data to third parties. All data '
    'and app settings are stored locally, and this app retrieves all its data from '
    'the official OnAir public API using the keys you provided during setup.\n\n'
    'The only permissions this app requires are internet access and notifications '
    '(optional).\n\n'
    'It uses only GET requests, never POST.\n\n'
    'Your API keys are stored encrypted, and all communications with OnAir’s API '
    'are done through HTTPS. Requests to the API are made directly from your device '
    'to OnAir’s servers without any intermediary. There are no cookies, no '
    'trackers, and no third parties—except OnAir.Company, which may or may not '
    'log the IPs of API callers.\n\n'
    'This app is not affiliated with OnAir.Company. It is an open-source project '
    'built by someone who loves to play this game.';

class ConsentScreen extends ConsumerWidget {
  const ConsentScreen({super.key, required this.onAccepted});
  final VoidCallback onAccepted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                Center(child: Image.asset('assets/logo.png', height: 80)),
                const SizedBox(height: 20),
                const Text(_consentText, style: TextStyle(height: 1.5)),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  key: const Key('acceptConsent'),
                  onPressed: () async {
                    await ref.read(appPrefsProvider).setConsentAccepted();
                    ref.read(consentAcceptedProvider.notifier).state = true;
                    onAccepted();
                  },
                  child: const Text('Accept & Continue'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
