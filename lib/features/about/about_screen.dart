import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/app_info.dart';
import '../../core/theme/app_colors.dart';

const _disclaimer =
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
    'log the IPs of API callers.';

const _notAffiliated =
    'This app is not affiliated with OnAir.Company. It is an open-source project '
    'built by someone who loves to play this game. Feel free to participate in the '
    'project:';

const _support =
    'If you encounter any bugs in the application or have feature requests, please '
    'do not contact the official OnAir support. Instead, post an issue on our '
    'official GitHub repo, and I’ll do my best to improve the app.';

Future<void> openUrl(String url) async {
  final uri = Uri.parse(url);
  await launchUrl(uri, mode: LaunchMode.externalApplication);
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Center(
          child: Column(
            children: [
              Image.asset('assets/logo.png', height: 72),
              const SizedBox(height: 8),
              const Text('OnAir Monitor',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
              const Text('Version $kAppVersion',
                  style: TextStyle(color: AppColors.textMuted)),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const Text(_disclaimer, style: TextStyle(height: 1.4)),
        const SizedBox(height: 20),
        const Text(_notAffiliated, style: TextStyle(height: 1.4)),
        const SizedBox(height: 12),
        FilledButton.icon(
          onPressed: () => openUrl(kGithubRepoUrl),
          icon: const Icon(Icons.code),
          label: const Text('GitHub Repo'),
        ),
        const Divider(height: 40),
        const Text(_support, style: TextStyle(height: 1.4)),
        const SizedBox(height: 12),
        OutlinedButton.icon(
          onPressed: () => openUrl(kGithubIssuesUrl),
          icon: const Icon(Icons.bug_report),
          label: const Text('Support'),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
