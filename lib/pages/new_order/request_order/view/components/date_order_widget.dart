import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/resources/asset_manager/assets_manager.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/dropdown_widget.dart';
import 'package:kayaan/widgets/text_field_widget.dart';

import '../../controller/request_order_provider.dart';
import 'privacy_order_widget.dart';

class DateOrderWidget extends ConsumerWidget {
  const DateOrderWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final requestOrderProv = ref.read(requestOrderProvider);
    return Column(
      children: [
        Consumer(builder: (context, ref, _) {
          ref.watch(requestOrderProvider.select((value) => value.date));
          return InkWell(
            onTap: () => requestOrderProv.onChangeDate(context),
            child: TextFieldWidget(
              controller: requestOrderProv.date,
              readOnly: true,
              enabled: false,
              outlineInputBorder: AppStyles.outlineBorder,
              icon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(AssetsManager.date)),
              labelText: LocaleKeys.serviceRequestDate.tr(),
            ),
          );
        }),
        const SizedBox(
          height: 20,
        ),
        Consumer(builder: (context, ref, _) {
          ref.watch(requestOrderProvider.select((value) => value.time.text));
          return InkWell(
            onTap: () => requestOrderProv.onChangeTime(context),
            child: TextFieldWidget(
              suffixIcon: SizedBox(
                  width: 130,
                  child: DropDown(
                    topPadding: false,
                    menu: [requestOrderProv.time.text],
                    menuIndex: 0,
                    onChanged: (value) {},
                  )),
              readOnly: true,
              enabled: false,
              outlineInputBorder: AppStyles.outlineBorder,
              icon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(AssetsManager.businessTime)),
              labelText: LocaleKeys.determineTime.tr(),
            ),
          );
        }),
        const SizedBox(
          height: 20,
        ),
        const PrivacyOrderWidget()
      ],
    );
  }
}
