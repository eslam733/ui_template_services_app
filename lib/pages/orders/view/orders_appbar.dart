import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/notification_widget.dart';

class OrdersAppBar extends StatelessWidget with PreferredSizeWidget {
  const OrdersAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: AppStyles.primaryColor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 35,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10)
                          .copyWith(bottom: 5),
                      child: Text(
                        LocaleKeys.myOrders.tr(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsetsDirectional.only(end: 5),
                      child: NotificationIcon(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // const SizedBox(height: 10),
        SizedBox(
          height: 50,
          child: TabBar(
            padding: const EdgeInsets.all(0),
            labelPadding: const EdgeInsets.all(0),
            onTap: (index) {},
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
            indicatorWeight: 2,
            labelColor: Colors.black,
            unselectedLabelColor: const Color(0xff8D8E91),
            tabs: [
              Padding(
                padding: const EdgeInsets.all(8.0).copyWith(top: 0),
                child: Text(LocaleKeys.pending.tr()),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0).copyWith(top: 0),
                child: Text(LocaleKeys.compeleted.tr()),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(107);
}
