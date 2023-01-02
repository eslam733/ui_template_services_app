import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/appbar_widget.dart';

import '../../../resources/constants/syles.dart';
import '../../../widgets/button_widget.dart';
import '../controller/services_details_provider.dart';
import '../controller/state_continue_click.dart';
import 'components/servicesDetailswidget.dart';

class ServicesDetailsScreen extends ConsumerWidget {
  static const routeName = 'services details';
  const ServicesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBarWidget(title: LocaleKeys.whatWeDo.tr()),
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
        child: SizedBox(
          width: double.infinity,
          child: Column(children: const [
            SizedBox(
              height: 20,
            ),
            ServicesDetailsWidget()
          ]),
        ),
      )),
    );
  }
}
