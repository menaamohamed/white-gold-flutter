import 'package:flutter/material.dart';
import 'package:white2_gold/features/auth/login/ui/login_screen.dart';

import 'package:white2_gold/features/auth/register/ui/regesiter_%20ui_draw.dart';

void main() {
  runApp(const WhiteGold());
}

class WhiteGold extends StatelessWidget {
  const WhiteGold({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginScreen());
  }
}
