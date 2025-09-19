import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  static SharedPreferences? _prefs;

  /// تعمل initialization مرة وحدة
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// set data
  static Future<void> setData(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  /// get data (Sync)
  static String getString(String key) {
    return _prefs?.getString(key) ?? '';
  }

  /// remove data
  static Future<void> removeData(String key) async {
    await _prefs?.remove(key);
  }
}

