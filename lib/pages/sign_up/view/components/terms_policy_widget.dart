import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';

class TermsAndPolicyWidget extends StatelessWidget {
  const TermsAndPolicyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool? acceptPolicy = false;
    return Row(
      children: [
        StatefulBuilder(builder: (context, setState) {
          return Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            splashRadius: 15,
            value: acceptPolicy,
            onChanged: (value) {
              setState(() {
                acceptPolicy = value;
              });
            },
            shape: const CircleBorder(),
          );
        }),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "${LocaleKeys.acceptOn.tr()} ",
                    style: AppStyles.textStyleReg16,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "${LocaleKeys.termsAndConditions.tr()} ",
                      style: AppStyles.textStyleReg16.copyWith(
                        color: AppStyles.greenColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    "${LocaleKeys.and.tr()} ",
                    style: AppStyles.textStyleReg16,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      LocaleKeys.privacyPolicy.tr(),
                      style: AppStyles.textStyleReg16.copyWith(
                        color: AppStyles.greenColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
