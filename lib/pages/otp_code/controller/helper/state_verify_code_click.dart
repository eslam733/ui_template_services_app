import 'package:flutter/material.dart';
import '../../../main/view/main_screen.dart';

class StateVerifyCode {
  void click(BuildContext context) {
    print("maaaaan");
    Navigator.of(context).pushNamedAndRemoveUntil(
      MainScreen.routeName,
      (route) => false,
    );
  }
}
