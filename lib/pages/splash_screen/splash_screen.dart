import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = "/splash";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.white,
      body: Center(
        child: Image.asset("assets/images/kayan_logo.png"),
      ),
    );
  }
}
