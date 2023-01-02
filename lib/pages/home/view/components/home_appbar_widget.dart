import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';
import 'package:kayaan/widgets/notification_widget.dart';

class HomeAppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppStyles.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 10,
              end: 20,
              top: 31,
              bottom: 11,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: CircleAvatar(
                    backgroundColor: AppStyles.backgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.all(1),
                      child: Image.asset("assets/images/profPic.png"),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "أهلا، أسامة",
                      style: AppStyles.textStyleBold18
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "عمارة رقم ١٩ أحمد الصاوي",
                      style: AppStyles.textStyleReg10
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
                const Spacer(),
                const NotificationIcon(),
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
