import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';

class AccountScreenItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback onTap;
  final Color? forgroundColor;
  const AccountScreenItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.onTap,
    this.forgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      iconColor: forgroundColor ?? AppStyles.primaryColor,
      textColor: forgroundColor ?? AppStyles.textColor,
      title: Text(title),
      leading: Image.asset(iconPath),
      trailing: const Icon(CupertinoIcons.forward),
    );
  }
}
