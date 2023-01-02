import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/pages/wallet/models/payment_card.dart';
import 'package:kayaan/pages/wallet/view/payment_card_widget.dart';
import 'package:kayaan/pages/wallet/view/payment_method_item.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';

class PaymentMethodsWidget extends StatelessWidget {
  PaymentMethodsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.paymentMethods.tr(),
          style: AppStyles.textStyleBold16.copyWith(
            color: AppStyles.primaryColor,
          ),
        ),
        const SizedBox(height: 15),
        ...paymentMethods
            .map((paymentMethod) => PaymentMethodItem(
                  paymentMethod: paymentMethod,
                ))
            .toList(),
        const SizedBox(height: 15),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) => const PaymentCardWidget(),
            );
          },
          child: SizedBox(
            width: double.infinity,
            child: DottedBorder(
              color: AppStyles.primaryColor,
              borderType: BorderType.RRect,
              radius: const Radius.circular(15),
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  LocaleKeys.addNewPaymentMethod.tr(),
                  style: AppStyles.textStyleReg17.copyWith(
                    color: const Color(0xff86AA34),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  final List<PaymentMethod> paymentMethods = [
    PaymentMethod(iamgePath: "assets/images/visa.svg", title: "بطاقة الائتمان"),
    PaymentMethod(iamgePath: "assets/images/visa.svg", title: "بطاقة الائتمان"),
  ];
}
