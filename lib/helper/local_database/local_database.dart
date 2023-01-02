import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabase {
  static Future<void> openHiveBox() async {
    await Hive.openBox('local_data');
  }

  static final _hiveBox = Hive.box("local_data");

  static bool isBoxOpen() {
    return _hiveBox.isOpen;
  }

  static void saveToken(String token) {
    _hiveBox.put("token", token);
  }

  static String? getToken() {
    return _hiveBox.get("token");
  }

  static void deletToken() {
    _hiveBox.delete("token");
  }

  static bool isUserAuthenticated() {
    return _hiveBox.containsKey("token");
  }
}
