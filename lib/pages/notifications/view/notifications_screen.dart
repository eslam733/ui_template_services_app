import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/pages/notifications/view/notification_item.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:kayaan/widgets/appbar_widget.dart';

class NotificationsScreen extends StatelessWidget {
  static const String routeName = "/notifications";
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(title: LocaleKeys.notification.tr()),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            NotificationItem(title: LocaleKeys.generalNotifications.tr()),
            NotificationItem(title: LocaleKeys.updateApp.tr()),
            NotificationItem(title: LocaleKeys.avalibleNewServices.tr()),
          ],
        ),
      ),
    );
  }
}
