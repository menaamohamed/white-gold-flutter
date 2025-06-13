import 'package:flutter/material.dart';
import 'package:white2_gold/core/constant/color.dart';

class TextFromFiledAuth extends StatelessWidget {
  final String? hintTExt;
  int? maxLines;
  final TextEditingController? controller;
  final IconButton? suffixIcon;
  final EdgeInsets? padding;

  TextFromFiledAuth({
    super.key,
    this.controller,
    this.maxLines,
    this.padding,
    this.hintTExt,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      decoration: InputDecoration(
        enabled: true,

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: MnColors.dPrimaryColor),
        ),
        suffixIcon:
            suffixIcon ??
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.agriculture, color: MnColors.hPrimaryColor),
            ),
        fillColor: Color(0xFFE0E0E0),
        filled: true,
        hintText: hintTExt,
        hintStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: MnColors.pPrimaryColor,
        ),
      ),
    );
  }
}
