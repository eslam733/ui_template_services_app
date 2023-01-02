import 'package:flutter/material.dart';

import '../resources/constants/syles.dart';

class CheckWidget extends StatelessWidget {
  final bool value;
  final Function(bool value) onchange;
  const CheckWidget({
    super.key,
    required this.value,
    required this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2.0),
      ),
      side: MaterialStateBorderSide.resolveWith(
        (states) => const BorderSide(width: 2, color: AppStyles.greenColor),
      ),
      checkColor: AppStyles.greenColor,
      fillColor: MaterialStateProperty.all(AppStyles.white),
      value: value,
      onChanged: (value) => onchange(value!),
    );
  }
}
