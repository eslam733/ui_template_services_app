import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/appbar_widget.dart';
import 'package:kayaan/widgets/button_widget.dart';
import 'package:kayaan/widgets/check_icon.dart';

class ChooseLanguageScreen extends StatelessWidget {
  static const String routeName = "/choose-language";
  const ChooseLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: LocaleKeys.chooseLang.tr()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Image.asset("assets/images/arabic.png"),
              title: Text(LocaleKeys.arabic.tr()),
              trailing: const CheckIcon(),
            ),
            ListTile(
              leading: Image.asset("assets/images/english.png"),
              title: Text(LocaleKeys.english.tr()),
              // trailing: const CheckIcon(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ButtonWidget(
          title: LocaleKeys.continuee.tr(),
          onButtonPressed: () {},
        ),
      ),
    );
  }
}
