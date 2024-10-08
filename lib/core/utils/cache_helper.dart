import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;
  static init() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> SetCache(
      {required String key, required dynamic value}) async {
    if (value is bool) {
      return await sharedPreferences!.setBool(key, value);
    }
    if (value is String) {
      return await sharedPreferences!.setString(key, value);
    }
    if (value is int) {
      return await sharedPreferences!.setInt(key, value);
    }
    return await sharedPreferences!.setDouble(key, value);
  }

  static dynamic GetCache({required String key}) {
    return sharedPreferences!.get(key);
  }
}
