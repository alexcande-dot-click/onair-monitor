import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/error/api_failure.dart';
import '../../core/theme/app_colors.dart';
import '../../providers/providers.dart';

class SetupScreen extends ConsumerStatefulWidget {
  const SetupScreen({super.key, required this.onAccountAdded});

  /// Called after an account is validated + saved. (Router pops/redirects.)
  final VoidCallback onAccountAdded;

  @override
  ConsumerState<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends ConsumerState<SetupScreen> {
  final _companyId = TextEditingController();
  final _apiKey = TextEditingController();
  bool _busy = false;
  String? _error;

  @override
  void dispose() {
    _companyId.dispose();
    _apiKey.dispose();
    super.dispose();
  }

  Future<void> _connect() async {
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      await ref.read(accountManagerProvider).addAccount(
            companyId: _companyId.text.trim(),
            apiKey: _apiKey.text.trim(),
          );
      ref.read(activeAccountRevisionProvider.notifier).state++;
      if (mounted) widget.onAccountAdded();
    } on ApiFailure catch (e) {
      setState(() => _error = e.message);
    } catch (_) {
      setState(() => _error = 'Could not connect. Check your details and network.');
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/logo.png', height: 96),
                const SizedBox(height: 16),
                Text('OnAir Monitor',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall),
                const SizedBox(height: 8),
                const Text('Connect a company to start monitoring.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.textMuted)),
                const SizedBox(height: 24),
                TextField(
                  key: const Key('companyIdField'),
                  controller: _companyId,
                  decoration: const InputDecoration(
                      labelText: 'Company ID', border: OutlineInputBorder()),
                ),
                const SizedBox(height: 12),
                TextField(
                  key: const Key('apiKeyField'),
                  controller: _apiKey,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'API Key', border: OutlineInputBorder()),
                ),
                if (_error != null) ...[
                  const SizedBox(height: 12),
                  Text(_error!, style: const TextStyle(color: AppColors.danger)),
                ],
                const SizedBox(height: 20),
                FilledButton(
                  key: const Key('connectButton'),
                  onPressed: _busy ? null : _connect,
                  child: _busy
                      ? const SizedBox(
                          height: 18,
                          width: 18,
                          child: CircularProgressIndicator(strokeWidth: 2))
                      : const Text('Connect'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
