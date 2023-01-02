import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/widgets/notification_widget.dart';

import 'back_button_widget.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Widget? actionWidget;
  final bool hasBackButton;
  final TextStyle? titleTextStyle;
  const AppBarWidget({
    Key? key,
    required this.title,
    this.actionWidget,
    this.titleTextStyle,
    this.hasBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppStyles.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 35,
              bottom: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                hasBackButton ? const BackButtonWidget() : const SizedBox(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10)
                      .copyWith(bottom: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const NotificationIcon(),
                // actionWidget ?? const SizedBox(width: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
