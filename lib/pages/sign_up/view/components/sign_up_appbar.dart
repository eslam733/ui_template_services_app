import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../resources/constants/syles.dart';
import '../../../../resources/translations/locale_keys.g.dart';
import '../../../../widgets/auth_arrow_back.dart';

class SignUpAppbar extends StatelessWidget {
  const SignUpAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AuthArrowBack(),
          Text(
            LocaleKeys.creatAccount.tr(),
            style: AppStyles.textStyleBold18,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
        ],
      ),
    );
  }
}
