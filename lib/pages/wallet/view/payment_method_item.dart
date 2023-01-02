import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kayaan/pages/wallet/models/payment_card.dart';
import 'package:kayaan/resources/constants/syles.dart';

class PaymentMethodItem extends StatelessWidget {
  final PaymentMethod paymentMethod;
  const PaymentMethodItem({
    super.key,
    required this.paymentMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: AppStyles.primaryColor),
      ),
      child: Row(
        children: [
          SvgPicture.asset(paymentMethod.iamgePath),
          const SizedBox(width: 15),
          Text(
            paymentMethod.title,
            style: AppStyles.textStyleReg17,
          )
        ],
      ),
    );
  }
}
