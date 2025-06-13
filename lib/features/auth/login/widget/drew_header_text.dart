import 'package:flutter/material.dart';
import 'package:white2_gold/core/constant/color.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
