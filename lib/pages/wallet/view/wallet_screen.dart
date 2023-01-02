import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kayaan/pages/wallet/view/balance_widget.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/appbar_widget.dart';

import 'payment_methods_widget.dart';

class WalletScreen extends StatelessWidget {
  static const String routeName = "/wallet";
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: LocaleKeys.balanceAndCards.tr()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(
            children: [
              const BalanceWidget(),
              const SizedBox(height: 20),
              PaymentMethodsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
