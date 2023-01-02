import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/asset_manager/assets_manager.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/appbar_widget.dart';

import '../../../../widgets/button_widget.dart';
import '../controller/helper/state_continue_click.dart';
import 'components/service_type_widget.dart';

class ServicesTypeOrderScreen extends StatelessWidget {
  static const routeName = 'service type order';
  const ServicesTypeOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: LocaleKeys.serviceType.tr()),
            bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ButtonWidget(
          title: LocaleKeys.continuee.tr(),
          onButtonPressed: () => StateContinueClick().click(),
        ), 
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: const [
             SizedBox(
              height: 20,
            ),
            ServiceTypewidget()
          ],
        ),
      )),
    );
  }
}
