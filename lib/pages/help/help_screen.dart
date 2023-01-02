import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/appbar_widget.dart';

class HelpScreen extends StatelessWidget {
  static const String routeName = "/help";
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: LocaleKeys.help.tr()),
    );
  }
}
