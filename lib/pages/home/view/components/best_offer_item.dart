import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';

class BestOfferItem extends StatelessWidget {
  const BestOfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        surfaceTintColor: const Color(0xffF8F8F8),
        margin: EdgeInsets.zero,
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(
              color: AppStyles.backgroundColor,
              width: 3,
            ),
          ),
          width: 258,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  "assets/images/homeBanner.png",
                  height: 78,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 7,
                ).copyWith(
                  top: 1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "خصم 40% عند التعاقد لمدة 3 أشهر",
                      style: AppStyles.textStyleReg12,
                    ),
                    Text(
                      "2000 ج.م",
                      style: AppStyles.textStyleReg12.copyWith(
                        color: AppStyles.greenColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
