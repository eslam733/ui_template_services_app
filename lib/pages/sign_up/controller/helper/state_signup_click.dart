import 'package:flutter/material.dart';

import '../../../otp_code/view/otp_code_screen.dart';

class StateSignUp {
  void click(BuildContext context) {
    Navigator.of(context).pushNamed(OtpCodeScreen.routeName);
  }
}
