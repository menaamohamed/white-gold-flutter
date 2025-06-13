import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white2_gold/core/constant/color.dart';

import 'package:white2_gold/core/constant/textstyle.dart';
import 'package:white2_gold/features/auth/login/widget/login_body.dart';
import 'package:white2_gold/features/auth/login/logic/login_provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MnColors.kPrimaryColor,
        centerTitle: true,
        title: Text("Login ", style: AppTextStyle.textsize18),
      ),

      body: ChangeNotifierProvider(
        create: (context) => LoginProvider(context: context),

        builder: (context, child) => LoginBody(),
      ),
    );
  }
}
