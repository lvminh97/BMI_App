import 'package:shared_preferences/shared_preferences.dart';

class Language {
  static String cur = "vi";

  static Future<void> toggle() async {
    if(cur == "vi") {
      cur = "en";
    }
    else {
      cur = "vi";
    }
    await store();
  }

  static Future<void> store() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("lang", cur);
  }

  static Future<void> load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    cur = prefs.getString("lang") ?? "vi";
  }
}