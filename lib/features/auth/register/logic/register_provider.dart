import 'dart:developer';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:white2_gold/features/auth/register/model/country_model.dart';
import 'package:white2_gold/features/auth/register/model/regions_model.dart';
import 'package:white2_gold/features/auth/register/repo/country_repo.dart';
import 'package:white2_gold/features/auth/register/repo/regions_repo.dart';

class RegisterProvider extends ChangeNotifier {
  late BuildContext context;
  RegisterProvider({required this.context}) {
    fetchCountry(context: context);
  }

  List<CountryModel>? contries;
  List<RegionsModel>? regionsx;
  var countrySelcted;
  var regionsselcted;
  bool countryLoading = false;
  bool regionsLoading = false;
  Future<void> fetchCountry({required BuildContext context}) async {
    try {
      contries = await CountryRepo.getAllCountry();
      if (contries != null && contries!.isNotEmpty) {
        countrySelcted = contries!.first.id;
        await getAllregions(countryId: countrySelcted);
      }
    } catch (e) {
      log("Error fetching countries: $e");
    } finally {
      countryLoading = false;
      notifyListeners();
    }
  }

  getAllregions({countryId}) async {
    regionsx = await RegionsRepo.getAllRegions(countryId: countryId);
  }
}
