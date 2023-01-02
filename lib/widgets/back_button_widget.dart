import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.of(context).pop();
      }),
      child: const Icon(CupertinoIcons.back, size: 28, color: Colors.white),
    );
  }
}
