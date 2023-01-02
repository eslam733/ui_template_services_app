import 'package:flutter/material.dart';
import 'package:kayaan/helper/router/router.dart';

void showMySnackbar(String message) {
  final SnackBar snackBar = SnackBar(
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Text(message)],
    ),
    behavior: SnackBarBehavior.floating,
  );
  ScaffoldMessenger.of(
    RoutesHelper.navigatorKey.currentContext!,
  ).showSnackBar(snackBar);
}
