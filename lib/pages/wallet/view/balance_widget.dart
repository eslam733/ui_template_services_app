import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resources/constants/syles.dart';
import '../../../resources/translations/locale_keys.g.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
        start: 18,
        top: 14,
        bottom: 14,
        end: 25,
      ),
      decoration: const BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.myBalance.tr(),
                style: AppStyles.textStyleBold18.copyWith(
                  color: const Color(0xff9CD400),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "15.0 ر.س",
                style: AppStyles.textStyleBold18.copyWith(
                  color: const Color(0xff9CD400),
                ),
              ),
            ],
          ),
          SvgPicture.asset("assets/images/wallet.svg")
        ],
      ),
    );
  }
}
