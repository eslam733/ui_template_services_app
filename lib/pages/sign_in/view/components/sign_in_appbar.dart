import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';

class SignInAppBar extends StatelessWidget {
  const SignInAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LocaleKeys.helloAgain.tr(),
          style: AppStyles.textStyleBold22.copyWith(fontSize: 28),
        ),
        const SizedBox(height: 10),
        Text(
          LocaleKeys.helloAgainHint.tr(),
          style: AppStyles.textStyleReg20,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
