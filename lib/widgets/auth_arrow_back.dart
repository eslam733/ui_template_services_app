import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthArrowBack extends StatelessWidget {
  const AuthArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: const Icon(
        Icons.keyboard_backspace_rounded,
        color: Colors.black,
        size: 35,
      ),
    );
  }
}
