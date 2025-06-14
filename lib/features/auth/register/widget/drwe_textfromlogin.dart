import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white2_gold/core/constant/color.dart';
import 'package:white2_gold/core/extention/empty_sized_box.dart';
import 'package:white2_gold/core/constant/text.dart';
import 'package:white2_gold/core/constant/textstyle.dart';
import 'package:white2_gold/features/auth/custom/drew_textfromfiled.dart';
import 'package:white2_gold/features/auth/register/logic/register_provider.dart';
import 'package:white2_gold/features/auth/register/widget/drew_dropdownfiled.dart';

class Auth3Textfromfield extends StatelessWidget {
  var controller;

  Auth3Textfromfield({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegisterProvider(),
      builder: (context, child) => Column(
        children: [
          SizedBox(
            child: TextFromFiledAuth(
              maxLines: 2,
              controller: TextEditingController(),
              hintTExt: "firstName",
              padding: EdgeInsets.all(2),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_2_rounded),
                color: MnColors.hPrimaryColor,
              ),
            ),
          ),
          15.sbH,
          TextFromFiledAuth(
            maxLines: 2,
            controller: TextEditingController(),
            padding: EdgeInsets.all(2),
            hintTExt: "LastNmae",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_2_rounded),
              color: MnColors.hPrimaryColor,
            ),
          ),
          15.sbH,
          TextFromFiledAuth(
            maxLines: 2,
            controller: TextEditingController(),
            hintTExt: "passowrd",
            padding: EdgeInsets.all(2),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.password_sharp),
              color: MnColors.hPrimaryColor,
            ),
          ),
          15.sbH,
          TextFromFiledAuth(
            maxLines: 2,
            controller: TextEditingController(),
            hintTExt: "mobile",
            padding: EdgeInsets.all(2),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.password_sharp),
              color: MnColors.hPrimaryColor,
            ),
          ),

          15.sbH,

          TextFromFiledAuth(
            maxLines: 2,
            controller: TextEditingController(),
            hintTExt: "Email",
            padding: EdgeInsets.all(2),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.email_rounded),
              color: MnColors.hPrimaryColor,
            ),
          ),
          15.sbH,
          CustomDropdown(),
          15.sbH,
        ],
      ),
    );
  }
}
