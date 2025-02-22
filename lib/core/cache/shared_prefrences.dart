import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  // Singleton instance
  static final CacheHelper _instance = CacheHelper._internal();
  factory CacheHelper() => _instance;
  CacheHelper._internal();

  static SharedPreferences? _prefs;

  // Initialize SharedPreferences
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Save data
  static Future<bool> setData<T>(String key, T value) async {
    if (_prefs == null) {
      await init();
    }

    if (value is String) {
      return _prefs!.setString(key, value);
    } else if (value is int) {
      return _prefs!.setInt(key, value);
    } else if (value is bool) {
      return _prefs!.setBool(key, value);
    } else if (value is double) {
      return _prefs!.setDouble(key, value);
    } else if (value is List<String>) {
      return _prefs!.setStringList(key, value);
    } else {
      throw Exception("Unsupported type");
    }
  }

  // Get data
  static T? getData<T>(String key) {
    if (_prefs == null) {
      throw Exception("SharedPreferences not initialized");
    }

    if (T == String) {
      return _prefs!.getString(key) as T?;
    } else if (T == int) {
      return _prefs!.getInt(key) as T?;
    } else if (T == bool) {
      return _prefs!.getBool(key) as T?;
    } else if (T == double) {
      return _prefs!.getDouble(key) as T?;
    } else if (T == List<String>) {
      return _prefs!.getStringList(key) as T?;
    } else {
      throw Exception("Unsupported type");
    }
  }

  // Remove data
  static Future<bool> removeData(String key) async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.remove(key);
  }

  // Clear all data
  static Future<bool> clearAll() async {
    if (_prefs == null) {
      await init();
    }
    return _prefs!.clear();
  }
}