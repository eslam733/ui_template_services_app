import 'package:flutter/material.dart';
import 'package:kayaan/pages/otp_code/view/otp_code_screen.dart';

class StateLogin {
  void click(BuildContext context) {
    Navigator.of(context).pushNamed(OtpCodeScreen.routeName);
  }
}
