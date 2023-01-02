import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/button_widget.dart';
import 'package:kayaan/widgets/form_item.dart';

import 'edit_profile_appbar.dart';

class EditProfileScreen extends StatelessWidget {
  static const String routeName = "/edit-profile";
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EditProfileAppbar(),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                FormItem(
                  lable: LocaleKeys.name.tr(),
                  hintText: LocaleKeys.name.tr(),
                  icon: const Icon(Icons.person_outline),
                ),
                FormItem(
                  lable: LocaleKeys.phoneNumber.tr(),
                  hintText: LocaleKeys.phoneNumber.tr(),
                  icon: const Icon(Icons.call_outlined),
                ),
                FormItem(
                  lable: LocaleKeys.email.tr(),
                  hintText: LocaleKeys.email.tr(),
                  icon: const Icon(Icons.mail_outline_rounded),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ButtonWidget(
          title: LocaleKeys.saveData.tr(),
          onButtonPressed: () {},
        ),
      ),
    );
  }
}
