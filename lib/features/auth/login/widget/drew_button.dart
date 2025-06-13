import 'package:flutter/material.dart';
import 'package:white2_gold/core/constant/color.dart';

class ButtonAuth extends StatelessWidget {
  void Function()? onpress;
  var text;

  ButtonAuth({super.key, this.onpress, this.text});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onpress,
      icon: Text(
        text,
        style: TextStyle(
          color: MnColors.kPrimaryColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
