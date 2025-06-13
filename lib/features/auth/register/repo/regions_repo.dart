import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:white2_gold/core/constant/api.dart';
import 'package:white2_gold/features/auth/register/model/regions_model.dart';

class RegionsRepo {
  static getAllRegions({countryId}) async {
    List<RegionsModel>? regionss = [];

    Map<String, dynamic> body = {"language_id": 1, "country_id": countryId};
    var response = await http.post(Uri.parse(regions), body: jsonEncode(body));
    if (response.statusCode == 200) {
      regionss = regionsModelFromJson(response.body);
    } else {
      print("errrrrrrooorrrr");
    }
  }
}
