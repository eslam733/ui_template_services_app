import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';

class NotificationItem extends StatefulWidget {
  final String title;
  const NotificationItem({super.key, required this.title});

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  late bool isActive;

  @override
  void initState() {
    super.initState();
    isActive = false;
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      hoverColor: Colors.transparent,
      visualDensity: VisualDensity.compact,
      activeColor: Colors.white,
      activeTrackColor: const Color(0xff86AA34),
      value: isActive,
      onChanged: (value) {
        setState(() {
          isActive = value;
        });
      },
      title: Text(
        widget.title,
        style: AppStyles.textStyleReg18.copyWith(color: AppStyles.textColor),
      ),
    );
  }
}
