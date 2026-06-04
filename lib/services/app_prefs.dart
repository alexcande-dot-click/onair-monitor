import 'package:shared_preferences/shared_preferences.dart';

/// Thin wrapper over SharedPreferences for the app's local flags.
class AppPrefs {
  AppPrefs(this._prefs);
  final SharedPreferences _prefs;

  static const _kConsent = 'consent_accepted';
  static const _kBannerDismissedUntil = 'update_banner_dismissed_until';

  static Future<AppPrefs> create() async =>
      AppPrefs(await SharedPreferences.getInstance());

  bool get consentAccepted => _prefs.getBool(_kConsent) ?? false;
  Future<void> setConsentAccepted() => _prefs.setBool(_kConsent, true);

  /// The update banner is hidden until this time (epoch ms), or null.
  DateTime? get bannerDismissedUntil {
    final ms = _prefs.getInt(_kBannerDismissedUntil);
    return ms == null ? null : DateTime.fromMillisecondsSinceEpoch(ms);
  }

  Future<void> dismissBannerFor(Duration d) => _prefs.setInt(
      _kBannerDismissedUntil, DateTime.now().add(d).millisecondsSinceEpoch);
}
