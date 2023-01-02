import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';

import '../../controller/state_services_show_click.dart';
import '../../../../widgets/service_item.dart';
import '../../controller/state_services_show_details_click.dart';

class HomeServices extends ConsumerWidget {
  const HomeServices({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.ourServices.tr(),
              style: AppStyles.textStyleBold18,
            ),
            InkWell(
              onTap: () => ServicesShow().click(),
              child: Text(
                LocaleKeys.seeAll.tr(),
                style: AppStyles.textStyleReg12,
              ),
            ),
          ],
        ),
        InkWell(
          onTap: () => ServicesShowDetailsClick().click(),
          child: const ServiceItemWidget(
            imagePath: "assets/images/lamsa.svg",
            title: "لمسة",
            subTitle: "خدمات النظافة العامة",
          ),
        ),
        const ServiceItemWidget(
          imagePath: "assets/images/nazafa.svg",
          title: "نظافة",
          subTitle: "نظافة الشركات الكبرى",
        ),
      ],
    );
  }
}
