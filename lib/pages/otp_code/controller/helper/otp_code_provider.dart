import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final verificationCodeProvider =
    ChangeNotifierProvider.autoDispose<VerificationCodeProvider>(
  (ref) => VerificationCodeProvider(ref),
);

class VerificationCodeProvider extends ChangeNotifier {
  final Ref ref;
  VerificationCodeProvider(this.ref);
  final ScrollController scrollController = ScrollController();
  final TextEditingController pinCodeController = TextEditingController();
  int? otpCode;
  String? verifiedPhone;
  VoidCallback? onOtpCompletedFun;

  Future<void> onOtpCompleted(
    BuildContext context,
    String enteredCode,
  ) async {
    // check code
    if (enteredCode == (otpCode.toString())) {
      // ref.read(isRightCodeProvider.notifier).state = true;
      // notifyListeners();
      // onOtpCompletedFun!();
      // ref.read(codeTimerProvider).resetTimer();
      // pinCodeController.clear();
    } else {
      // pinCodeController.clear();
      // ref.read(isRightCodeProvider.notifier).state = false;
      // notifyListeners();
    }
  }

  Future<void> onResendCodePressed(BuildContext context) async {
    // otpCode = await VerificationCodeServices.sendVerificationCode(
    //   userType: ref(userTypeProvider.notifier).state,
    //   context,
    //   query: {
    //     "phone": verifiedPhone,
    //     "type": ref(userTypeProvider.notifier).state.name,
    //     "operation": "register",
    //   },
    // );
    // if (otpCode != null) {
    //   ref(codeTimerProvider).startTimer();
    // }
  }
}
