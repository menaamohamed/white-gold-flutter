import 'package:flutter/material.dart';
import 'package:white2_gold/core/color.dart';
import 'package:white2_gold/custom/Text2_fromfiled.dart';

void main() {}
TextEditingController name3 = TextEditingController();
TextEditingController name4 = TextEditingController();
TextEditingController name6 = TextEditingController();
TextEditingController name7 = TextEditingController();

TextEditingController name5 = TextEditingController();

class RegisterUi extends StatelessWidget {
  const RegisterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Register",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Cairo",
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "white gold",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: MnColors.hPrimaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Column(
            children: [
              TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  hintText: "firstname",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: MnColors.hPrimaryColor),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  hintText: "lastname",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: MnColors.hPrimaryColor),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  hintText: "name",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: MnColors.hPrimaryColor),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  hintText: "phone number",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: MnColors.hPrimaryColor),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  hintText: "email",
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: MnColors.hPrimaryColor),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
