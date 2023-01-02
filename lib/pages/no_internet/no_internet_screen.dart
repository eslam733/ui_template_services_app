import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../resources/constants/syles.dart';
import '../../resources/translations/locale_keys.g.dart';

class NoInternetScreen extends StatelessWidget {
  static const String routeName = "/no-internet";

  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.backgroundColor,
      body: Center(child: Text(LocaleKeys.noInternet.tr())),
    );
  }
}
