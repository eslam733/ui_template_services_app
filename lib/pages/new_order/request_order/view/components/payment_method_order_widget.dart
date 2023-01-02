import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kayaan/pages/new_order/request_order/view/components/privacy_order_widget.dart';
import 'package:kayaan/widgets/check_widget.dart';

import '../../../../../resources/asset_manager/assets_manager.dart';
import '../../../../../resources/constants/syles.dart';
import '../../../../../resources/translations/locale_keys.g.dart';
import '../../../../../widgets/text_field_widget.dart';

class PaymentMethodOrder extends StatelessWidget {
  const PaymentMethodOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(
          readOnly: true,
          enabled: false,
          outlineInputBorder: AppStyles.outlineBorder,
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(
                bottom: 5.0, start: 10, end: 5),
            child: Align(
              alignment: Alignment.center,
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Text(
                '4000L.E',
                style: AppStyles.textStyleBoldGreen14,
              ),
            ),
          ),
          icon: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                AssetsManager.card,
                color: AppStyles.greenColor,
              )),
          labelText: LocaleKeys.myWallet.tr(),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'يخصم 20 جنيه من كل عمليه طلب خدمة من المحفظة',
              style: AppStyles.textStyleReg12,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
         TextFieldWidget(
          readOnly: true,
          enabled: false,
          outlineInputBorder: AppStyles.outlineBorder,
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(
                bottom: 5.0, start: 10, end: 5),
            child: Align(
              alignment: Alignment.center,
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: SizedBox(
                width: 105,
                child: Row(
                  children: [
                    Text(
                      '****2539',
                      style: AppStyles.textStyleBold14,
                    ),
                    CheckWidget(value: false, onchange: (value){})
                  ],
                ),
              ),
            ),
          ),
          icon: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                AssetsManager.card,
                color: AppStyles.greenColor, 
              )),
          labelText: LocaleKeys.creditCard.tr(),
        ),
        SizedBox(
          height: 20,
        ),
          TextFieldWidget(
          readOnly: true,
          enabled: false,
          outlineInputBorder: AppStyles.outlineBorder,
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(
                bottom: 5.0, start: 10, end: 5),
            child: Align(
              alignment: Alignment.center,
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: CheckWidget(value: false, onchange: (value){}),
            ),
          ),
          icon: Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                AssetsManager.card,
                color: AppStyles.greenColor, 
              )),
          labelText: LocaleKeys.cashMoney.tr(),
        ),
        SizedBox(
          height: 20,
        ),
        PrivacyOrderWidget()
      ],
    );
  }
}
