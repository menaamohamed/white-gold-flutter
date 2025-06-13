import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white2_gold/core/constant/color.dart';
import 'package:white2_gold/core/extention/empty_sized_box.dart';
import 'package:white2_gold/features/auth/custom/drew_textfromfiled.dart';
import 'package:white2_gold/features/auth/login/logic/login_provider.dart';

class TextFromFiledLogin extends StatelessWidget {
  const TextFromFiledLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFromFiledAuth(
          padding: EdgeInsets.only(left: 20, right: 12),
          controller: context.watch<LoginProvider>().email,
          hintTExt: "email",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.agriculture, color: MnColors.hPrimaryColor),
          ),
        ),
        25.sbH,
        TextFromFiledAuth(
          padding: EdgeInsets.only(left: 20, right: 12),
          controller: context.watch<LoginProvider>().password,
          hintTExt: "password",
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.agriculture, color: MnColors.hPrimaryColor),
          ),
        ),
      ],
    );
  }
}
