import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../controller/helper/state_signup_click.dart';
import 'components/swith_to_signin_widget.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/button_widget.dart';
import 'components/sign_up_appbar.dart';
import 'components/sign_up_form_input.dart';
import 'components/sign_up_image_wrapper.dart';
import 'components/terms_policy_widget.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/sign-up";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            children: [
              const SignUpAppbar(),
              const SignUpImageWrapper(),
              const SignUpFormInputs(),
              const SizedBox(height: 13),
              const TermsAndPolicyWidget(),
              const SizedBox(height: 60),
              ButtonWidget(
                title: LocaleKeys.creatAccount.tr(),
                onButtonPressed: () => StateSignUp().click(context),
                width: double.infinity,
              ),
              const SizedBox(height: 15),
              const SwitchToSignInWiget(),
            ],
          ),
        ),
      )),
    );
  }
}
