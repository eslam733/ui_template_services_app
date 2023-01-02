import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';

import '../../resources/translations/locale_keys.g.dart';
import '../../widgets/button_widget.dart';

Future<bool?> showConfirmationBottomSheet(
  BuildContext context, {
  required String title,
  required String hintText,
  String? cancelButtonTitle,
  Color? titleTextColor,
  Color? acceptButtonColor,
  Color? acceptButtonTextColor,
  required VoidCallback onYesPressed,
}) async {
  const Color redColor = Color(0xffCE1126);
  final bottomSheet = SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 5),
          Container(
            width: 25,
            height: 1,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              color: const Color(0xff003456).withOpacity(0.3),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: AppStyles.textStyleBold18.copyWith(
              color: titleTextColor,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: const Color(0xff00AEA1).withOpacity(0.3),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            hintText,
            style: AppStyles.textStyleReg17.copyWith(
              color: const Color(0xff020202),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 35),
          Row(
            children: [
              Expanded(
                child: ButtonWidget(
                  elevation: 0,
                  borderRadius: 18,
                  color: acceptButtonColor ?? AppStyles.primaryColor,
                  title: LocaleKeys.confirm.tr(),
                  onButtonPressed: onYesPressed,
                  width: double.infinity,
                  textColor: acceptButtonTextColor ?? Colors.white,
                  hight: 50,
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                  onTap: onYesPressed,
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: redColor),
                      borderRadius: const BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Center(
                      child: Text(
                        LocaleKeys.cancel.tr(),
                        style: AppStyles.textStyleSemiBold18.copyWith(
                          color: redColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15)
        ],
      ),
    ),
  );
  final isConfirmed = await showModalBottomSheet<bool>(
    isScrollControlled: true,
    context: context,
    builder: (context) => bottomSheet,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
  );
  return isConfirmed;
}
