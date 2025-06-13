import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:white2_gold/core/constant/api.dart';
import 'package:white2_gold/features/auth/register/model/country_model.dart';

class CountryRepo {
  static getAllCountry() async {
    List<CountryModel>? contries;
    Map<String, dynamic> body = {"language_id": 1};
    var response = await http.post(Uri.parse(country), body: jsonEncode(body));
    if (response.statusCode == 200) {
      return contries = countryFromJson(response.body);
    } else {
      print("this error");
    }
  }
}
