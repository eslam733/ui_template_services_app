import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/pages/new_order/select_services/model/service_type_model.dart';

import '../../../../../resources/asset_manager/assets_manager.dart';
import '../../../../../resources/constants/syles.dart';
import '../../../../../widgets/check_widget.dart';
import '../../controller/helper/service_type_provider.dart';
import '../../controller/helper/state_checkbox_click.dart';

class ServiceTypewidget extends StatelessWidget {
  const ServiceTypewidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final serviceTypeList =
          ref.watch(serviceTypeProvider.select((value) => value.servicesList));
      // ref.watch(serviceTypeProvider.select((value) => value.isLoad));
      return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppStyles.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[200]!,
                        blurRadius: 5.0,
                        offset: const Offset(0, 0)),
                  ],
                ),
                width: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(serviceTypeList[index].icon, width: 28),
                      Text(
                        serviceTypeList[index].title,
                        style: AppStyles.textStyleBoldBlack18,
                      ),
                      StatefulBuilder(builder: (context, setState) {
                        return CheckWidget(
                          onchange: (value) {
                            setState(() {
                              ref
                                  .read(stateCheckBoxClick.notifier)
                                  .click(serviceTypeList[index].id);
                            });
                          },
                          value: serviceTypeList[index].check,
                        );
                      })
                    ]),
              ),
          separatorBuilder: (context, index) => const SizedBox(
                height: 15,
              ),
          itemCount: serviceTypeList.length);
    });
  }
}
