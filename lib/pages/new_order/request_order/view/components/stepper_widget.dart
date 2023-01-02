import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../resources/constants/syles.dart';
import '../../controller/request_order_provider.dart';

class StepperWidget extends ConsumerWidget {
  const StepperWidget({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final requestProvider = ref.read(requestOrderProvider);
    return Consumer(builder: (context, ref, _) {
      ref.watch(requestOrderProvider.select((value) => value.indexStepper));

      return AnotherStepper(
        activeBarColor: AppStyles.primaryColor,
        stepperList: requestProvider.stepperData,
        stepperDirection: Axis.horizontal,
        iconWidth: 50,
        iconHeight: 50,
        activeIndex: requestProvider.indexStepper,
      );
    });
  }
}
