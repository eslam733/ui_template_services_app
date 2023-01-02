import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../resources/asset_manager/assets_manager.dart';
import '../../../../../resources/constants/syles.dart';
import '../../../../../widgets/check_widget.dart';
import '../../../select_services/controller/helper/service_type_provider.dart';
import '../../../select_services/controller/helper/state_checkbox_click.dart';

class ServicesTypeWidget extends StatelessWidget {
  const ServicesTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final servicesTypepProvider = ref.read(serviceTypeProvider);
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              height: 50,
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        width: 180,
                        decoration: BoxDecoration(
                          color: AppStyles.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[200]!,
                                blurRadius: 5.0,
                                offset: const Offset(0, 0)),
                          ],
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                servicesTypepProvider.servicesList[index].icon,
                                color: AppStyles.primaryColor,
                                width: 25,
                              ),
                              Text(
                                servicesTypepProvider.servicesList[index].title,
                                style: AppStyles.textStyleBold16,
                              ),
                              StatefulBuilder(builder: (context, setState) {
                                return CheckWidget(
                                  onchange: (value) {
                                    setState(() {
                                      ref
                                          .read(stateCheckBoxClick.notifier)
                                          .click(servicesTypepProvider
                                              .servicesList[index].id);
                                    });
                                  },
                                  value: servicesTypepProvider
                                      .servicesList[index].check,
                                );
                              })
                            ]),
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                  itemCount: servicesTypepProvider.servicesList.length),
            )
          ],
        ),
      );
    });
  }
}
