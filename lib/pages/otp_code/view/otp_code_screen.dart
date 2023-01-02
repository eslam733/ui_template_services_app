import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/pages/otp_code/controller/helper/state_verify_code_click.dart';
import 'package:kayaan/resources/constants/syles.dart';

import '../../../resources/translations/locale_keys.g.dart';
import '../../../widgets/auth_arrow_back.dart';
import '../../../widgets/button_widget.dart';
import 'components/pin_code_widget.dart';

class OtpCodeScreen extends StatelessWidget {
  static const routeName = "/otp-screen";
  const OtpCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            children: [
              Row(
                children: const [
                  AuthArrowBack(),
                ],
              ),
              const SizedBox(height: 60),
              Text(
                LocaleKeys.otpHint.tr(),
                style: AppStyles.textStyleReg20.copyWith(
                  color: const Color(0xff707070),
                ),
              ),
              const SizedBox(height: 70),
              const OtpCodeWidget(),
              const SizedBox(height: 50),
              ButtonWidget(
                title: LocaleKeys.continuee.tr(),
                onButtonPressed: () => StateVerifyCode().click(context),
                width: double.infinity,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      )),
    );
  }
}
