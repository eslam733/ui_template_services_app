import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/pages/sign_up/controller/helper/state_navigate_to_signin.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';

class SwitchToSignInWiget extends StatelessWidget {
  const SwitchToSignInWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${LocaleKeys.qHaveAccount.tr()} ",
          style: AppStyles.textStyleReg16,
        ),
        InkWell(
          onTap: () => StateGoToSignIn().click(context),
          child: Text(
            LocaleKeys.loginNow.tr(),
            style: AppStyles.textStyleReg16.copyWith(
              color: AppStyles.greenColor,
            ),
          ),
        )
      ],
    );
  }
}
