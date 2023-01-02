import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../resources/constants/syles.dart';
import '../../../../resources/translations/locale_keys.g.dart';
import '../../controller/state_best_offers_show_click.dart';
import 'best_offer_item.dart';


class BestOffers extends StatelessWidget {
  const BestOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              LocaleKeys.bestOffers.tr(),
              style: AppStyles.textStyleBold18,
            ),
            InkWell(
              onTap: () =>BestOffersShow().click(),
              child: Text(
                LocaleKeys.seeAll.tr(),
                style: AppStyles.textStyleReg12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 120,
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => BestOfferItem(),
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
