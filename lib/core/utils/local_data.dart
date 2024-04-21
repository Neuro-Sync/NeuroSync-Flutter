
import 'package:shared_preferences/shared_preferences.dart';

class PrefService {
  static SharedPreferences? _preferences;
  static PrefService? _instance;

  static Future<PrefService> getInstance() async {
    _instance = PrefService();
    _preferences = await SharedPreferences.getInstance();
    return _instance!;
  }

  void setUserActions({
    required List<String> actions,
  }) {
    _preferences?.setStringList('actions', actions);
  }

  List<String>? getUserActions() {
    var dataStr = _preferences?.getStringList('actions');
    if (dataStr == null) return null;
    return dataStr;
  }

  Future<Future<bool>?> clearUserData() async => _preferences?.clear();
}
