import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';

import '../../resources/translations/locale_keys.g.dart';
import '../../widgets/button_widget.dart';

Future<bool?> showConfirmationDialog(
  BuildContext context, {
  required String title,
  required String? subtitle1,
  String? subtitle2,
  String? cancelButtonTitle,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (() {
                      Navigator.of(context).pop(false);
                    }),
                    child: const Icon(Icons.close, size: 28),
                  ),
                ],
              ),
              Text(
                title,
                style: AppStyles.textStyleBold18,
                textAlign: TextAlign.center,
              ),
              if (subtitle1 != null)
                Text(
                  subtitle1,
                  style: AppStyles.textStyleSemiBoldGrey14,
                  textAlign: TextAlign.center,
                ),
              // if (subtitle2 != null)
              //   Text(
              //     subtitle2,
              //     style: kTextStyleSemiBold14,
              //     textAlign: TextAlign.center,
              //   ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ButtonWidget(
                  title: LocaleKeys.confirm.tr(),
                  onButtonPressed: onYesPressed,
                  textStyle: AppStyles.textStyleSemiBold14,
                  width: double.infinity,
                  hight: 40,
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.of(context).pop(false);
                },
                child: Text(
                  cancelButtonTitle ?? LocaleKeys.cancel.tr(),
                  style: AppStyles.textStyleSemiBoldPrim12,
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
