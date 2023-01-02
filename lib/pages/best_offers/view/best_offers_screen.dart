import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../resources/translations/locale_keys.g.dart';
import '../../../widgets/appbar_widget.dart';
import '../../../widgets/service_item.dart';
import 'components/best_offer_item.dart';

class BestOffersScreen extends StatelessWidget {
  static const String routeName = "/best offers";
  const BestOffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: LocaleKeys.bestOffers.tr()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
      
        itemCount: 4,
        itemBuilder: (context, index) => BestOfferItem(),
      ),
      ),
    );
  }
}
