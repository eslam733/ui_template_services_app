import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/widgets/notification_widget.dart';

import '../../../widgets/back_button_widget.dart';

class EditProfileAppbar extends StatelessWidget with PreferredSizeWidget {
  final Widget? actionWidget;
  final bool hasBackButton;
  final TextStyle? titleTextStyle;
  const EditProfileAppbar({
    Key? key,
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
            padding: const EdgeInsetsDirectional.only(
              start: 12,
              end: 15,
              top: 35,
              bottom: 20,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                hasBackButton ? const BackButtonWidget() : const SizedBox(),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        child: Image.asset(
                          "assets/images/profile_placeholder.png",
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -8,
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.edit_outlined,
                            color: Color(0xffB11F29),
                            size: 13,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const NotificationIcon(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(112);
}
