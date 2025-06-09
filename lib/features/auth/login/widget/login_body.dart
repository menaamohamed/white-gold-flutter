import 'package:flutter/material.dart';
import 'package:white2_gold/core/color.dart';
import 'package:white2_gold/core/image.dart';

TextEditingController name = TextEditingController();
TextEditingController name2 = TextEditingController();

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(AppImage.imageLogo),
                    height: height * 0.180,
                    width: width * 0.640,
                  ),
                ],
              ),
            ),
          ],
        ),

        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 15,
                children: [
                  Text(
                    "sign in",
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: "Cairo",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "white gold",
                    style: TextStyle(
                      color: MnColors.hPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 12),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: MnColors.dPrimaryColor),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.agriculture,
                      color: MnColors.hPrimaryColor,
                    ),
                  ),
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  hintText: "email",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 12),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: MnColors.dPrimaryColor),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.nest_cam_wired_stand_outlined,
                      color: MnColors.hPrimaryColor,
                    ),
                  ),
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  hintText: "passowrd",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 15, left: 120),
              child: Row(
                children: [
                  Text(
                    "Regesiter?",
                    style: TextStyle(
                      color: MnColors.sPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
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
              height: 50,
              width: 240,

              child: IconButton(
                onPressed: () {},
                icon: Text(
                  "sign in",
                  style: TextStyle(
                    color: MnColors.kPrimaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
