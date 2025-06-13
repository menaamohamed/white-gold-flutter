import 'package:flutter/material.dart';
import 'package:white2_gold/core/constant/color.dart';
import 'package:white2_gold/core/extention/empty_sized_box.dart';
import 'package:white2_gold/core/constant/text.dart';
import 'package:white2_gold/core/constant/textstyle.dart';

import 'package:white2_gold/features/auth/register/widget/drwe_textfromlogin.dart';

void main() {}

class RegisterUi extends StatelessWidget {
  const RegisterUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: ConstantText.regesiter18text),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ConstantText.regesitertext],
            ),

            22.sbH,

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [ConstantText.whitegoldtext],
            ),
            12.sbH,

            Column(
              children: [
                Auth3Textfromfield(controller: TextEditingController()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
