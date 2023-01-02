import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../resources/asset_manager/assets_manager.dart';
import '../../../../../resources/constants/syles.dart';
import '../../../../../resources/translations/locale_keys.g.dart';

class PrivacyOrderWidget extends StatelessWidget {
  const PrivacyOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              AssetsManager.info,
              width: 20,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              LocaleKeys.notPossibleToRequestServiceOnSameDayAsRequest.tr(),
              style: AppStyles.textStyleReg14,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Image.asset(
              AssetsManager.info,
              width: 20,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(LocaleKeys.housewifeRequired.tr(),
                style: AppStyles.textStyleReg14)
          ],
        ),
      ],
    );
  }
}
