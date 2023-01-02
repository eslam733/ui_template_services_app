import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../resources/translations/locale_keys.g.dart';
import '../../../widgets/appbar_widget.dart';
import '../../../widgets/service_item.dart';

class ServicesScreen extends StatelessWidget {
  static const String routeName = "/services";
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: LocaleKeys.ourServices.tr()),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: const [
          ServiceItemWidget(
            imagePath: "assets/images/lamsa.svg",
            title: "لمسة",
            subTitle: "خدمات النظافة العامة",
          ),
          ServiceItemWidget(
            imagePath: "assets/images/nazafa.svg",
            title: "نظافة",
            subTitle: "نظافة الشركات الكبرى",
          ),
        ]),
      )),
    );
  }
}
