import 'package:flutter/material.dart';
import '../../resources/constants/syles.dart';

class RouteErrorScreen extends StatelessWidget {
  final String errorMessage;
  const RouteErrorScreen(this.errorMessage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: Center(child: Text("Route Error: $errorMessage")),
    );
  }
}
