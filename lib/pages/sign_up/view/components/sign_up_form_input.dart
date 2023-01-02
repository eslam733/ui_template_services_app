import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../resources/constants/syles.dart';
import '../../../../resources/translations/locale_keys.g.dart';
import '../../../../widgets/form_item.dart';
import '../../../../widgets/phone_input_widget.dart';

class SignUpFormInputs extends StatelessWidget {
  const SignUpFormInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          FormItem(
            lable: LocaleKeys.name.tr(),
            hintText: LocaleKeys.name.tr(),
            icon: const Icon(Icons.person_outline),
          ),
          FormItem(
            lable: LocaleKeys.email.tr(),
            hintText: LocaleKeys.email.tr(),
            icon: const Icon(Icons.mail_outline_rounded),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    LocaleKeys.phoneNumber.tr(),
                    style: AppStyles.textStyleBold14,
                  ),
                ),
                const SizedBox(height: 12),
                const PhoneInputWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
