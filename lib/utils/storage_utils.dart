import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model/user_model.dart';

class Preferences {
  Preferences._();

  static const authToken = 'authToken';
  static const user = 'user';
  static const users = 'users';
}

class StorageUtils {
  static Future<SharedPreferences> get sharedInstance =>
      SharedPreferences.getInstance();

  static Future<String?> getAccessToken() async {
    return _getString(Preferences.authToken);
  }

  static Future<void> setUsers(List<UserModel> users) async {
    var json = jsonEncode(users.map((e) => e.toJson()).toList());
    _setArray(json);
  }

  static Future<List<UserModel>?> getUsers() async {
    final usersString = await _getString(Preferences.users);
    if (usersString != null) {
      final List<dynamic> json = jsonDecode(usersString);

      return json.map((e) => UserModel.fromJson(e)).toList();
    } else {
      return null;
    }
  }

  static Future<UserModel?> getUser() async {
    final userMap = await _read<Map<String, dynamic>>(Preferences.user);

    if (userMap != null) {
      return UserModel.fromJson(userMap);
    }
  }

  static Future<void> setUser(UserModel user) async {
    await _save(Preferences.user, user);
  }

  static Future<void> setAccessToken(String authToken) async {
    await _setString(Preferences.authToken, authToken);
  }

  static Future<void> removeAccessToken() async {
    await _remove(Preferences.authToken);
  }

  /// Private helper functions
  static Future<T?> _read<T>(String key) async {
    final prefs = await sharedInstance;
    final value = prefs.getString(key);
    return value == null ? null : json.decode(value) as T;
  }

  static Future<void> _setArray(String key) async {
    final prefs = await sharedInstance;
    await prefs.setString(Preferences.users, key);
  }

  static Future<void> _remove(String key) async {
    final prefs = await sharedInstance;
    await prefs.remove(key);
  }

  static Future<void> clear() async {
    final prefs = await sharedInstance;
    await prefs.clear();
  }

  static Future<void> _setString(String key, String value) async {
    final prefs = await sharedInstance;
    await prefs.setString(key, value);
  }

  static Future<String?> _getString(String key) async {
    final prefs = await sharedInstance;
    return prefs.getString(key);
  }

  static Future<void> _save(String key, Object value) async {
    final prefs = await sharedInstance;
    await prefs.setString(key, json.encode(value));
  }
}
