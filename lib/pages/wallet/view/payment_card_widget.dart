import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/button_widget.dart';
import 'package:kayaan/widgets/text_field_widget.dart';

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 61,
              decoration: const BoxDecoration(
                color: AppStyles.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Text(
                    LocaleKeys.addPaymentMethod.tr(),
                    style:
                        AppStyles.textStyleReg22.copyWith(color: Colors.white),
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextFieldWidget(
                      labelText: LocaleKeys.cardNumber.tr(),
                    ),
                    TextFieldWidget(
                      labelText: LocaleKeys.cardName.tr(),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWidget(
                            labelText: LocaleKeys.passwordNum.tr(),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: TextFieldWidget(
                            labelText: LocaleKeys.endDate.tr(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
              child: ButtonWidget(
                width: double.infinity,
                title: LocaleKeys.saveData.tr(),
                onButtonPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
