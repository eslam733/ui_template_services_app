import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/pages/otp_code/controller/helper/otp_code_provider.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../resources/constants/syles.dart';

class OtpCodeWidget extends ConsumerStatefulWidget {
  const OtpCodeWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OtpCodeWidgetState();
}

class _OtpCodeWidgetState extends ConsumerState<OtpCodeWidget> {
  @override
  Widget build(BuildContext context) {
    final verificationCodeProv = ref.watch(verificationCodeProvider.notifier);
    final or = MediaQuery.of(context).orientation;
    return SizedBox(
      width: or == Orientation.landscape ? 400 : null,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PinCodeTextField(
          controller: verificationCodeProv.pinCodeController,
          length: 4,
          obscureText: true,
          blinkWhenObscuring: true,
          autovalidateMode: AutovalidateMode.disabled,
          animationType: AnimationType.fade,
          cursorColor: AppStyles.primaryColor,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            fieldHeight: 60,
            fieldWidth: 80,
            borderWidth: 3,
            selectedColor: AppStyles.primaryColor,
            activeColor: AppStyles.primaryColor,
            disabledColor: AppStyles.primaryColor,
            errorBorderColor: AppStyles.primaryColor,
            inactiveColor: AppStyles.primaryColor,
          ),
          keyboardType: TextInputType.number,
          scrollPadding: EdgeInsets.zero,
          textStyle: AppStyles.textStyleBold24.copyWith(fontSize: 40),
          cursorHeight: 30,
          onCompleted: (v) => verificationCodeProv.onOtpCompleted(context, v),
          appContext: context,
          onChanged: (_) {},
          onTap: () {
            Future.delayed(
              const Duration(seconds: 1),
              () {
                verificationCodeProv.scrollController.animateTo(
                  verificationCodeProv
                      .scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.bounceIn,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
