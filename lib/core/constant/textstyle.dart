import 'package:flutter/widgets.dart';
import 'package:white2_gold/core/constant/color.dart';

class AppTextStyle {
  AppTextStyle._();

  static const TextStyle textsize25bold = TextStyle(
    fontFamily: "Cairo",
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle textsize15bold = TextStyle(
    fontFamily: "Cairo",
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: MnColors.pPrimaryColor,
  );
  static const TextStyle textsize18 = TextStyle(
    fontFamily: "Cairo",
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle textsize20 = TextStyle(
    fontFamily: "Cairo",
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: MnColors.hPrimaryColor,
  );
  static final TextStyle textsize125bold = TextStyle(
    fontFamily: "Cairo",
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: MnColors.hPrimaryColor,
  );
}
