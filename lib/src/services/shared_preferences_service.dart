import 'package:shared_preferences/shared_preferences.dart';

// this wiil manage all the shared preferences related stuff
class SharedPreferencesService {
  SharedPreferencesService(this.sharedPreferences);
  final SharedPreferences sharedPreferences;

  static const dataKey = 'app_data';

  Future<bool> setdata(String data) async {
    return await sharedPreferences.setString(dataKey, data);
  }

  String? getdata() {
    return sharedPreferences.getString(dataKey);
  }

  Future<bool> deletedata() async {
    return await sharedPreferences.remove(dataKey);
  }
}
