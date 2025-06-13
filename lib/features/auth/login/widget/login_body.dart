import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white2_gold/core/extention/empty_sized_box.dart';
import 'package:white2_gold/core/constant/image.dart';
import 'package:white2_gold/core/constant/textstyle.dart';
import 'package:white2_gold/core/extention/mediquery.dart';
import 'package:white2_gold/features/auth/login/widget/drew_button.dart';
import 'package:white2_gold/features/auth/login/widget/drew_header_text.dart';
import 'package:white2_gold/features/auth/login/widget/drew_textfrom_login.dart';
import 'package:white2_gold/features/auth/login/logic/login_provider.dart';

TextEditingController name = TextEditingController();
TextEditingController name2 = TextEditingController();

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: context.watch<LoginProvider>().key,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(AppImage.imageLogo),
                      height: context.height * 0.180,
                      width: context.width * 0.640,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        Column(
          children: [
            HeaderText(),
            25.sbH,
            TextFromFiledLogin(),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 15, left: 120),
              child: Row(
                children: [
                  Text("Regesiter?", style: AppTextStyle.textsize15bold),
                  10.sbW,
                  Text(
                    "DO you have an account",
                    style: TextStyle(color: Color(0xffB7B7B7)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff474458),
                borderRadius: BorderRadius.circular(25),
              ),
              height: context.height * 0.060,
              width: context.width * 0.6,

              child: ButtonAuth(
                onpress: () {
                  context.read<LoginProvider>().loginFromProvider();
                },
                text: "sign in",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
