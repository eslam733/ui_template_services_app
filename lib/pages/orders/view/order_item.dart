import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/helper/dialogs/confirmation_dialog.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import '../controller/helper/enums.dart';

class OrderItem extends StatelessWidget {
  final int index;
  final OrderStatus orderStatus;
  const OrderItem({
    super.key,
    required this.index,
    required this.orderStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15).copyWith(
            bottom: 5,
          ),
          child: Text(
            "#$index",
            style: AppStyles.textStyleBold14,
          ),
        ),
        Dismissible(
          confirmDismiss: (_) => showConfirmationDialog(
            context,
            title: LocaleKeys.deleteOrder.tr(),
            subtitle1: LocaleKeys.deleteOrderHint.tr(),
            onYesPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          key: Key(index.toString()),
          background: Container(
            padding: const EdgeInsetsDirectional.only(start: 5),
            decoration: const BoxDecoration(
              color: Color(0xFFEEE3F1),
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
            ),
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.close,
              size: 40.0,
              color: AppStyles.primaryColor,
            ),
          ),
          direction: orderStatus == OrderStatus.pending
              ? DismissDirection.startToEnd
              : DismissDirection.none,
          child: Container(
            decoration: BoxDecoration(
              border: orderStatus == OrderStatus.compeleted
                  ? Border.all(color: AppStyles.primaryColor)
                  : null,
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              color: orderStatus == OrderStatus.pending
                  ? AppStyles.primaryColor
                  : null,
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/home_visit.png"),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "زيارة منزلية",
                                  style: AppStyles.textStyleReg14.copyWith(
                                    color: orderStatus == OrderStatus.pending
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff707070),
                                  ),
                                ),
                                Text(
                                  "(عدد ١ زيارة)",
                                  style: AppStyles.textStyleReg14.copyWith(
                                    color: orderStatus == OrderStatus.pending
                                        ? const Color(0xff9CD400)
                                        : const Color(0xff707070),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: orderStatus == OrderStatus.pending
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff401145),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/order_num.png"),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "زيارة منزلية",
                                  style: AppStyles.textStyleReg14.copyWith(
                                    color: orderStatus == OrderStatus.pending
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff707070),
                                  ),
                                ),
                                Text(
                                  "(عدد ١ زيارة)",
                                  style: AppStyles.textStyleReg14.copyWith(
                                    color: orderStatus == OrderStatus.pending
                                        ? const Color(0xff9CD400)
                                        : const Color(0xff707070),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: orderStatus == OrderStatus.pending
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff401145),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/start_date.png"),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "زيارة منزلية",
                                  style: AppStyles.textStyleReg14.copyWith(
                                    color: orderStatus == OrderStatus.pending
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff707070),
                                  ),
                                ),
                                Text(
                                  "(عدد ١ زيارة)",
                                  style: AppStyles.textStyleReg14.copyWith(
                                    color: orderStatus == OrderStatus.pending
                                        ? const Color(0xff9CD400)
                                        : const Color(0xff707070),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: orderStatus == OrderStatus.pending
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff401145),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/end_date.png"),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "زيارة منزلية",
                                  style: AppStyles.textStyleReg14.copyWith(
                                    color: orderStatus == OrderStatus.pending
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff707070),
                                  ),
                                ),
                                Text(
                                  "(عدد ١ زيارة)",
                                  style: AppStyles.textStyleReg14.copyWith(
                                    color: orderStatus == OrderStatus.pending
                                        ? const Color(0xff9CD400)
                                        : const Color(0xff707070),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
