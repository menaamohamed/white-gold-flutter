import 'package:flutter/material.dart';
import 'package:white2_gold/core/color.dart';
import 'package:white2_gold/core/text.dart';
import 'package:white2_gold/features/auth/login/widget/login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MnColors.kPrimaryColor,
        centerTitle: true,
        title: Text("Login ", style: AppTextStyle.textsize25bold),
      ),

      body: LoginBody(),
    );
  }
}
