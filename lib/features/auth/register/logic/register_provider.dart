import 'dart:developer';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:white2_gold/features/auth/register/model/country_model.dart';
import 'package:white2_gold/features/auth/register/model/regions_model.dart';
import 'package:white2_gold/features/auth/register/repo/country_repo.dart';
import 'package:white2_gold/features/auth/register/repo/regions_repo.dart';

class RegisterProvider extends ChangeNotifier {
  RegisterProvider() {
    getAllCountry();
  }
  List<CountryModel>? contries;
  List<RegionsModel>? regions;
  var countrySelcted;
  var regionsSelcted;
  bool countryLoading = false;
  bool regionsLoading = false;
  getAllCountry() async {
    contries = await CountryRepo.getAllCountry();
    if (contries!.isNotEmpty) {
      countrySelcted = contries!.first.id;
      getAllRegions(countryId: countrySelcted);
    }
    countryLoading = true;
    notifyListeners();
  }

  getAllRegions({countryId}) async {
    regions = await RegionsRepo.getAllRegions(countryId: countryId);
    if (regions!.isNotEmpty) {
      regionsSelcted = regions!.first.id;
    } else {}
    regionsLoading = true;
    notifyListeners();
  }
}
