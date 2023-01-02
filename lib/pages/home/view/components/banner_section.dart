import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../resources/constants/syles.dart';
import '../../../../resources/translations/locale_keys.g.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image.asset(
              "assets/images/homeBanner.png",
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                colors: [
                  Colors.black54,
                  const Color(0xff545454).withOpacity(0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
                  0.4,
                  1.0,
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(
                  Icons.whatsapp,
                  color: Colors.white,
                  size: 27,
                ),
                const SizedBox(width: 5),
                Text(
                  LocaleKeys.contactUs.tr(),
                  style: AppStyles.textStyleBoldWhite22.copyWith(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
