import 'package:another_stepper/another_stepper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/helper/router/router.dart';
import 'package:kayaan/resources/asset_manager/assets_manager.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';

import '../../../../helper/dialogs/order_send_success_dialog.dart';

final requestOrderProvider =
    ChangeNotifierProvider.autoDispose((ref) => RequestOrderProvider(ref: ref));

class RequestOrderProvider extends ChangeNotifier {
  Ref ref;
  int indexStepper = 1;
  List<StepperData> stepperData = [];
  int indexGovernorate = 0;
  List<String> governorateList = [
    LocaleKeys.governorate.tr(),
    'القاهرة',
    'الجيزة',
    'الاسكندرية',
  ];
  // address order
  TextEditingController region = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController buildNumber = TextEditingController();
  TextEditingController floorNumber = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController roomsNumber = TextEditingController();

  // date order
  TextEditingController date = TextEditingController();
  TextEditingController time = TextEditingController();

  RequestOrderProvider({required this.ref}) {
    var now = DateTime.now();
    var formatter = DateFormat('h:m a');
    String formattedDate = formatter.format(now);
    time.text = formattedDate;
    setSteppers();
  }

  onChangeDate(context) async {
    DateTime? selectedData = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 100)),
    );
    if (selectedData != null) {
      date.text = selectedData.toString().split(' ')[0];
      listen();
    }
  }

  onChangeTime(context) async {
    var selectedTime = await showTimePicker(
      
      initialTime: TimeOfDay.now(),
      context: context,
    );
    if(selectedTime == null) return;

    time.text = selectedTime.format(context).toString().replaceAll('م', 'pm').replaceAll('ص', 'am');
    listen();
  }

  onChangeDropDown(String? value) {
    if (value == null) return;
    int index = governorateList.indexOf(value);
    if (index != -1) indexGovernorate = index;
    listen();
  }

  setSteppers() {
    stepperData = [
      StepperData(
          iconWidget: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            border: Border.all(color: AppStyles.primaryColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            )),
        child: Image.asset(
          AssetsManager.marker,
          color: AppStyles.greenColor,
        ),
      )),
      StepperData(
          iconWidget: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: indexStepper >= 2 ? AppStyles.primaryColor : AppStyles.white,
            border: Border.all(color: AppStyles.primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        child: Image.asset(
          AssetsManager.date,
          color:
              indexStepper >= 2 ? AppStyles.greenColor : AppStyles.primaryColor,
        ),
      )),
      StepperData(
          iconWidget: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: indexStepper == 3 ? AppStyles.primaryColor : AppStyles.white,
            border: Border.all(color: AppStyles.primaryColor),
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        child: Image.asset(AssetsManager.card,
            color: indexStepper >= 3
                ? AppStyles.greenColor
                : AppStyles.primaryColor),
      )),
    ];
  }

  nextStep() {
    if(indexStepper == 3) {
       orderSendSuccessDialog(RoutesHelper.navigatorKey.currentContext!, onYesPressed: (){});

      return;
    }
    indexStepper++;
    setSteppers();
    listen();
  }

  listen() {
    notifyListeners();
  }
}
