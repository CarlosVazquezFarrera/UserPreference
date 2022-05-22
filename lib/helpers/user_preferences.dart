import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_preference/enum/preferences.dart';

class UserPreferences {
  static late SharedPreferences _prefs;

  static bool _isDarkMode = false;
  static String _name = '';
  static int _gender = 1;

  ///creates an instance of SharedPreferences and keeps it on memory as a Singleto
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static set isDarkMode(bool value) {
    _isDarkMode = value;
    _prefs.setBool(Preferences.isDarkeMode, value);
  }

  static bool get isDarkMode {
    return _prefs.getBool(Preferences.isDarkeMode) ?? _isDarkMode;
  }

  static set name(String value) {
    _name = value;
    _prefs.setString(Preferences.name, value);
  }

  static String get name {
    return _prefs.getString(Preferences.name) ?? _name;
  }

  static set gender(int? value) {
    _gender = value!;
    _prefs.setInt(Preferences.gender, value);
  }

  static int get gender {
    return _prefs.getInt(Preferences.gender) ?? _gender;
  }

  static String get genderString {
    return _gender == 1 ? 'M' : 'F';
  }
}
