import 'dart:developer';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:white2_gold/core/dilog/awasome_dialog.dart';
import 'package:white2_gold/features/auth/login/model/login.dart';
import 'package:white2_gold/features/auth/login/repo/login_repo.dart';

class LoginProvider extends ChangeNotifier {
  late BuildContext context;
  LoginProvider({required this.context}) {}

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> key = GlobalKey();
  Login? loginModel;

  loginFromProvider() async {
    SharedPreferences? sharedPreferences =
        await SharedPreferences.getInstance();
    if (key.currentState!.validate()) {
      loginModel = await LoginRepo.getLoginFromApi(
        userName: email.text,
        pass: password.text,
      );

      if (loginModel!.status == 1) {
        log(loginModel!.profile!.id.toString());
        sharedPreferences.setString("id", loginModel!.profile!.id.toString());

        // Show SnackBar after saving
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(loginModel!.reason.toString()),
            duration: const Duration(seconds: 2),
          ),
        );

        // Navigate to the new screen
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const Text("aaaaa")),
          (Route<dynamic> route) => false,
        );
      } else {
        return ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('falied ${loginModel!.reason}'),
            duration: const Duration(seconds: 2),
          ),
        );
      }
    }
  }
}
