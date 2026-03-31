import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  /// 🔹 Initialize SharedPreferences
  Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  /// 🔹 Generic Save method
  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is bool) return await sharedPreferences.setBool(key, value);
    if (value is String) return await sharedPreferences.setString(key, value);
    if (value is int) return await sharedPreferences.setInt(key, value);
    if (value is double) return await sharedPreferences.setDouble(key, value);
    return false;
  }

  /// 🔹 Generic Get method
  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  /// 🔹 Remove a specific key
  static Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  /// 🔹 Clear all data
  static Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }

  // ================= Specific helpers =================

  /// 🔹 Onboarding
  static const String _onboardingKey = "isOnBoardingVisited";

  bool? getOnBoarding() => sharedPreferences.getBool(_onboardingKey);

  Future<void> setOnBoarding({required bool value}) =>
      saveData(key: _onboardingKey, value: value);

  /// 🔹 User logged in
  static const String _isLoggedInKey = "isLoggedIn";

  static bool? getUserLoggedIn() => sharedPreferences.getBool(_isLoggedInKey);

  static Future<void> setUserLoggedIn({required bool value}) =>
      saveData(key: _isLoggedInKey, value: value);

  static const String _tokenKey = "userToken";

  static String? getUserToken() => sharedPreferences.getString(_tokenKey);

  static Future<void> setUserToken({required String token}) =>
      saveData(key: _tokenKey, value: token);

  static const String _userDataKey = "userData";

  static String? getUserData() => sharedPreferences.getString(_userDataKey);

  static Future<void> setUserData({required String data}) =>
      saveData(key: _userDataKey, value: data);
}
