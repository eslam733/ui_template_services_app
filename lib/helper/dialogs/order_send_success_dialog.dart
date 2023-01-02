import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/asset_manager/assets_manager.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:lottie/lottie.dart';

import '../../resources/translations/locale_keys.g.dart';
import '../../widgets/button_widget.dart';

Future<bool?> orderSendSuccessDialog(
  BuildContext context, {
  required VoidCallback onYesPressed,
}) async {
  final size = MediaQuery.of(context).size;
  final orientation = MediaQuery.of(context).orientation;
  final dialog = Dialog(
    backgroundColor: AppStyles.backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
        width:
            (orientation == Orientation.portrait ? size.width : size.height) *
                .9,
        child: Center(
          child: Column(
            children: [
              Lottie.asset(AssetsAnimatedManager.done),
              Text(
                LocaleKeys.serviceRequestCompletedSuccessfully.tr(),
                style: AppStyles.textStyleSemiBoldGrey14,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ButtonWidget(
                  title: LocaleKeys.containuee.tr(),
                  onButtonPressed: onYesPressed,
                  textStyle: AppStyles.textStyleSemiBold14,
                  width: double.infinity,
                  hight: 40,
                ),
              ),

              const SizedBox(height: 15)
            ],
          ),
        ),
      ),
    ),
  );
  final isConfirmed =
      await showDialog<bool>(context: context, builder: (context) => dialog);
  return isConfirmed;
}
