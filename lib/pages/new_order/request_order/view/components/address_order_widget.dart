import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/resources/asset_manager/assets_manager.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';

import '../../../../../resources/constants/syles.dart';
import '../../../../../widgets/dropdown_widget.dart';
import '../../../../../widgets/form_item.dart';
import '../../../../../widgets/text_field_widget.dart';
import '../../controller/request_order_provider.dart';
import 'privacy_order_widget.dart';
import 'services_type_widget.dart';

class AddressOrderWidget extends ConsumerWidget {
  const AddressOrderWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final reqestOrderProvider = ref.read(requestOrderProvider);
    return Column(
      children: [
        const ServicesTypeWidget(), const SizedBox(
          height: 20,
        ),
        Consumer(builder: (context, ref, _) {
          ref.watch(
              requestOrderProvider.select((value) => value.indexGovernorate));
          return DropDown(
            onChanged: (value) => reqestOrderProvider.onChangeDropDown(value),
            icon: AssetsManager.marker,
            menu: reqestOrderProvider.governorateList,
            menuIndex: reqestOrderProvider.indexGovernorate,
          );
        }),
        const SizedBox(
          height: 20,
        ),
        TextFieldWidget(
          controller: reqestOrderProvider.region,
          outlineInputBorder: AppStyles.outlineBorder,
          labelText: LocaleKeys.region.tr(),
          icon: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                AssetsManager.region,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFieldWidget(
          controller: reqestOrderProvider.street,
          outlineInputBorder: AppStyles.outlineBorder,
          labelText: LocaleKeys.street.tr(),
          icon: Padding(
              padding: const EdgeInsets.all(8),
              child: Image.asset(
                AssetsManager.street,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFieldWidget(
          controller: reqestOrderProvider.buildNumber,
          outlineInputBorder: AppStyles.outlineBorder,
          labelText: LocaleKeys.buildingNumber.tr(),
          icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                AssetsManager.building,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFieldWidget(
          controller: reqestOrderProvider.floorNumber,
          outlineInputBorder: AppStyles.outlineBorder,
          labelText: LocaleKeys.floorNumber.tr(),
          icon: Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(
                AssetsManager.building,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFieldWidget(
          controller: reqestOrderProvider.phone,
          outlineInputBorder: AppStyles.outlineBorder,
          labelText: LocaleKeys.phoneNumber.tr(),
          icon: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                AssetsManager.phoneCall,
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: TextFieldWidget(
                controller: reqestOrderProvider.area,
                outlineInputBorder: AppStyles.outlineBorder,
                icon: Padding(
                  padding: const EdgeInsetsDirectional.only(
                      bottom: 5.0, start: 10, end: 5),
                  child: Align(
                    alignment: Alignment.center,
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Text(
                      LocaleKeys.space.tr(),
                      style: AppStyles.textStyleBold16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextFieldWidget(
                controller: reqestOrderProvider.roomsNumber,
                outlineInputBorder: AppStyles.outlineBorder,
                icon: Padding(
                  padding: const EdgeInsetsDirectional.only(
                      bottom: 5.0, start: 10, end: 5),
                  child: Align(
                    alignment: Alignment.center,
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Text(
                      LocaleKeys.numberRooms.tr(),
                      style: AppStyles.textStyleBold16,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      const  PrivacyOrderWidget()
      ],
    );
  }
}
