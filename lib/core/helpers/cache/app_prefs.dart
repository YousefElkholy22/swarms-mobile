import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppPrefs {
  final SharedPreferences _sharedPrefs;
  final FlutterSecureStorage _storage;
  AppPrefs(this._sharedPrefs, this._storage);

  /// String
  Future<void> setString(String key, String value) async {
    await _sharedPrefs.setString(key, value);
  }

  String getString(String key) {
    return _sharedPrefs.getString(key) ?? "Unknown";
  }

  /// secure String
  Future<void> setSecureString(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String> getSecureString(String key) async {
    return await _storage.read(key: key) ?? "Unknown";
  }

  /// bool
  Future<void> setBool(String key, bool value) async {
    await _sharedPrefs.setBool(key, value);
  }

  bool getBool(String key) {
    return _sharedPrefs.getBool(key) ?? false;
  }

  /// int
  Future<void> setInt(String key, int value) async {
    await _sharedPrefs.setInt(key, value);
  }

  int getInt(String key) {
    return _sharedPrefs.getInt(key) ?? 0;
  }

  /// double
  Future<void> setDouble(String key, double value) async {
    await _sharedPrefs.setDouble(key, value);
  }

  double getDouble(String key) {
    return _sharedPrefs.getDouble(key) ?? 0.0;
  }

  /// List<String>
  Future<void> setStringList(String key, List<String> value) async {
    await _sharedPrefs.setStringList(key, value);
  }

  List<String> getStringList(String key) {
    return _sharedPrefs.getStringList(key) ?? [];
  }

  /// Remove
  Future<void> remove(String key) async {
    await _sharedPrefs.remove(key);
  }

  Future<void> removeSecure(String key) async {
    await _storage.delete(key: key);
  }

  /// Clear
  Future<void> clearAll() async {
    await Future.wait([
      _sharedPrefs.clear(),
      _storage.deleteAll(),
    ]);
  }
}
