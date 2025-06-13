import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:white2_gold/features/auth/login/model/login.dart';

class LoginRepo {
  static getLoginFromApi({userName, pass, deviceId}) async {
    Login? loginModel;
    Map<String, dynamic> body = {
      "user_name": userName,
      "password": pass,
      "language_id": 1,
      "device_id": deviceId,
    };
    var response = await http.post(
      Uri.parse("https://whitegold-cotton.com/ad_panel/api/customerLogin"),
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      return loginModel = loginFromJson(response.body);
    } else {
      print("this is error ");
    }
  }
}
