import 'package:shared_preferences/shared_preferences.dart';

class UserSrevices {
  Future<String?> checkUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString("id");
  }
}
