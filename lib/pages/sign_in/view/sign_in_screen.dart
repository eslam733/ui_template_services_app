import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/pages/sign_in/controller/helper/state_login_click.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/button_widget.dart';
import '../../../widgets/phone_input_widget.dart';
import 'components/sign_in_appbar.dart';
import 'components/swith_to_signup_widget.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = "/sign-in";

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const SignInAppBar(),
              const SizedBox(height: 30),
              const PhoneInputWidget(),
              const SizedBox(height: 50),
              ButtonWidget(
                title: LocaleKeys.login.tr(),
                onButtonPressed: () => StateLogin().click(context),
                width: double.infinity,
              ),
              const SizedBox(height: 20),
              const SwitchToSignUpWiget()
            ],
          ),
        ),
      )),
    );
  }
}
