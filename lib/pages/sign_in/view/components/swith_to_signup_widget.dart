import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';

import '../../controller/helper/state_navigate_to_signup.dart';

class SwitchToSignUpWiget extends StatelessWidget {
  const SwitchToSignUpWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${LocaleKeys.qNotHaveAccount.tr()} ",
          style: AppStyles.textStyleReg16,
        ),
        InkWell(
          onTap: () => StateGoToSignUp().click(context),
          child: Text(
            LocaleKeys.signUpNow.tr(),
            style: AppStyles.textStyleReg16.copyWith(
              color: AppStyles.greenColor,
            ),
          ),
        )
      ],
    );
  }
}
