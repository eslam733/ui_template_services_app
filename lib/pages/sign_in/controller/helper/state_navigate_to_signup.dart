import 'package:flutter/material.dart';
import '../../../sign_up/view/sign_up_screen.dart';

class StateGoToSignUp {
  void click(BuildContext context) {
    Navigator.of(context).pushNamed(SignUpScreen.routeName);
  }
}
