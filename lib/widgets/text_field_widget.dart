import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kayaan/resources/constants/syles.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    this.validator,
    this.hintText,
    this.labelText,
    this.onSaving,
    this.readOnly = false,
    this.enabled = true,
    this.controller,
    this.isLongField = false,
    this.keyboardType,
    this.inputFormatters,
    this.onTap,
    this.outlineInputBorder,
    this.textStyle,
    this.icon,
    this.suffixIcon,
    this.addCustomPadding = true,
  }) : super(key: key);
  final Function(String?)? validator;
  final Function(String?)? onSaving;
  final String? hintText;
  final String? labelText;
  final Widget? icon;
  final Function? onTap;
  final bool readOnly;
  final bool enabled;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool isLongField;
  final bool addCustomPadding;
  final TextInputType? keyboardType;
  final TextStyle? textStyle;
  final List<TextInputFormatter>? inputFormatters;
  final OutlineInputBorder? outlineInputBorder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.all(0),
        surfaceTintColor: Colors.white,
        child: TextFormField(
          onTap: ( ) {
            if(onTap != null) onTap!();
          } ,
          enabled: enabled ,
          readOnly: readOnly,
          style: textStyle,
          controller: controller,
          validator: (v) => validator == null ? null : validator!(v),
          onSaved: (v) => onSaving == null ? null : onSaving!(v),
          maxLines: isLongField ? 4 : 1,
          decoration: InputDecoration(
            contentPadding: addCustomPadding
                ? const EdgeInsets.symmetric(horizontal: 10)
                : null,
            prefixIcon: icon,
            suffixIcon: suffixIcon,
            hintText: hintText,
            labelText: labelText,
            labelStyle: AppStyles.textStyleRegGrey14,
            floatingLabelStyle: AppStyles.textStyleSemiBoldPrim16,
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
          ),
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
        ),
      ),
    );
  }
}
