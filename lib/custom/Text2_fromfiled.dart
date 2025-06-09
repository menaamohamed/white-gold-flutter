import 'package:flutter/material.dart';
import 'package:white2_gold/core/color.dart';

class Textfromfield extends StatelessWidget {
  final TextEditingController firstnamecontroller;
  final TextEditingController emailcontroller;
  final TextEditingController addresscontroller;
  final TextEditingController phonecontroller;
  final TextEditingController lastnameontroller;

  const Textfromfield({
    super.key,
    required this.addresscontroller,
    required this.emailcontroller,
    required this.firstnamecontroller,
    required this.lastnameontroller,
    required this.phonecontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: addresscontroller,
          decoration: InputDecoration(
            fillColor: Color.fromARGB(255, 136, 135, 135),
            filled: true,
            hintText: "",
            hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: MnColors.hPrimaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
