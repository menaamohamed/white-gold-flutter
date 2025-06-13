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
      create: (context) => RegisterProvider(context: context),
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
          context.watch<RegisterProvider>().countryLoading
              ? DropdownButtonFormField(
                  alignment: Alignment.center,
                  isExpanded: true,
                  padding: const EdgeInsets.all(10),
                  value: context.watch<RegisterProvider>().countrySelcted,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: InputBorder.none,
                  ),
                  items: context.watch<RegisterProvider>().contries!.map((
                    value,
                  ) {
                    return DropdownMenuItem(
                      value: value.id,
                      child: Text(
                        value.name.toString(),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                      ),
                    );
                  }).toList(),
                  onChanged: (v) async {
                    context.read<RegisterProvider>().regionsLoading = false;
                    context.read<RegisterProvider>().countrySelcted = v;
                    context.read<RegisterProvider>().getAllregions(
                      countryId: v,
                    );
                  },
                )
              : CircularProgressIndicator(color: Colors.black),
        ],
      ),
    );
  }
}
