import 'package:another_stepper/another_stepper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/resources/asset_manager/assets_manager.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/appbar_widget.dart';

import '../../../../widgets/button_widget.dart';
import '../controller/request_order_provider.dart';
import '../controller/state_continue_click.dart';
import 'components/address_order_widget.dart';
import 'components/date_order_widget.dart';
import 'components/payment_method_order_widget.dart';
import 'components/services_type_widget.dart';
import 'components/stepper_widget.dart';

class RequestOrderScreen extends ConsumerWidget {
  static const routeName = 'request new order';
  RequestOrderScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final requestProvider = ref.read(requestOrderProvider);
    return Scaffold(
      appBar: AppBarWidget(title: LocaleKeys.requestOrder.tr()),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Consumer(builder: (context, ref, _) {
          final index = ref.watch(
              requestOrderProvider.select((value) => value.indexStepper));
          return Container(
            decoration: index != 1
                ? BoxDecoration(
                    color: AppStyles.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[200]!,
                          blurRadius: 5.0,
                          offset: const Offset(0, -1)),
                    ],
                  )
                : const BoxDecoration(),
            height: index != 1 ? 100 : 50,
            child: Column(
              children: [
                if (index != 1)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys.totalAmountRequested.tr(),
                          style: AppStyles.textStyleBold16,
                        ),
                        Text(
                          '500L.E',
                          style: AppStyles.textStyleBoldGreen14,
                        ),
                      ],
                    ),
                  ),
                SizedBox(
                  width: double.infinity,
                  child: ButtonWidget(
                    title: LocaleKeys.continuee.tr(),
                    onButtonPressed: () => requestProvider.nextStep(),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: double.infinity,
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            const StepperWidget(),
            const SizedBox(
              height: 20,
            ),
            Consumer(
              builder: (context, ref, _) {
                ref.watch(
                    requestOrderProvider.select((value) => value.indexStepper));
                return Column(
                  children: [
                    Visibility(
                        visible: requestProvider.indexStepper == 1,
                        child: AddressOrderWidget()),
                    Visibility(
                        visible: requestProvider.indexStepper == 2,
                        child: DateOrderWidget()),
                    Visibility(
                        visible: requestProvider.indexStepper == 3,
                        child: PaymentMethodOrder()),
                  ],
                );
              },
            ),
          ]),
        ),
      )),
    );
  }
}
