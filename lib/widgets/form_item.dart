import 'package:flutter/material.dart';
import 'package:kayaan/widgets/text_field_widget.dart';
import '../resources/constants/syles.dart';

class FormItem extends StatelessWidget {
  final String lable;
  final Widget? icon;
  final Function(String?)? validator;
  final Function(String?)? onSaving;
  final String? hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final OutlineInputBorder? outlineInputBorder;
  final TextStyle? textStyle;

  const FormItem({
    super.key,
    required this.lable,
    this.icon,
    this.validator,
    this.hintText,
    this.labelText,
    this.onSaving,
    this.controller,
    this.keyboardType,
    this.outlineInputBorder,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(lable, style: AppStyles.textStyleBold14),
          ),
          const SizedBox(height: 12),
          TextFieldWidget(
            outlineInputBorder: AppStyles.outlineBorder,
            icon: icon,
            controller: controller,
            validator: (v) => validator == null ? null : validator!(v),
            onSaving: (v) => onSaving == null ? null : onSaving!(v),
            hintText: hintText,
            labelText: labelText,
            keyboardType: keyboardType,
            key: key,
            textStyle: textStyle,
          ),
        ],
      ),
    );
  }
}
