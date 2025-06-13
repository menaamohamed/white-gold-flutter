import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:white2_gold/core/user_services/check_user.dart';
import 'package:white2_gold/features/auth/login/ui/login_screen.dart';

import 'package:white2_gold/features/auth/register/ui/regesiter_%20ui_draw.dart';
import 'package:white2_gold/features/auth/register/ui/register_ui.dart';

void main() {
  runApp(const WhiteGold());
}

class WhiteGold extends StatefulWidget {
  const WhiteGold({super.key});

  @override
  State<WhiteGold> createState() => _WhiteGoldState();
}

class _WhiteGoldState extends State<WhiteGold> {
  bool _isloading = true;
  String? user;
  final UserSrevices _srevices = UserSrevices();

  checkuser() async {
    try {
      user = await _srevices.checkUser();
      await Future.delayed(Duration(seconds: 2));
    } catch (e) {
    } finally {
      setState(() {
        _isloading = false;
      });
    }
  }

  @override
  void initState() {
    checkuser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _isloading
          ? Center(child: CircularProgressIndicator(color: Colors.black))
          : user == null
          ? LoginScreen()
          : RegisterUi(),
    );
  }
}
