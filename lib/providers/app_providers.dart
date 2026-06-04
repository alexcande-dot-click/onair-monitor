import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../core/app_info.dart';
import '../services/app_prefs.dart';
import '../services/version_check.dart';

/// Overridden in main() with the loaded AppPrefs instance.
final appPrefsProvider = Provider<AppPrefs>((ref) {
  throw StateError('appPrefsProvider must be overridden');
});

/// Mirrors the persisted consent flag; the router reads this synchronously.
/// Seeded in main() from AppPrefs.
final consentAcceptedProvider = StateProvider<bool>((ref) => false);

/// The latest version string from the repo's version.txt, or null on failure.
final latestVersionProvider = FutureProvider.autoDispose<String?>((ref) async {
  try {
    final res = await Dio().get<String>(
      kVersionTxtUrl,
      options: Options(responseType: ResponseType.plain),
    );
    return res.data?.trim();
  } catch (_) {
    return null;
  }
});

/// The version string to surface in the update banner, or null when up to date
/// or the banner is currently dismissed.
final updateBannerProvider = FutureProvider.autoDispose<String?>((ref) async {
  final dismissedUntil = ref.watch(appPrefsProvider).bannerDismissedUntil;
  if (dismissedUntil != null && dismissedUntil.isAfter(DateTime.now())) {
    return null;
  }
  final latest = await ref.watch(latestVersionProvider.future);
  if (latest == null) return null;
  return isNewerVersion(latest, kAppVersion) ? latest : null;
});
