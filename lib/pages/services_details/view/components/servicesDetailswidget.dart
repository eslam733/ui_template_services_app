import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../resources/constants/syles.dart';
import '../../controller/services_details_provider.dart';

class ServicesDetailsWidget extends StatelessWidget {
  const ServicesDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
              final servicesList =
                  ref.watch(servicesDetailsProvider).servicesList;
              return ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                  itemCount: servicesList.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            servicesList[index].title,
                            style: AppStyles.textStyleBold18,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: AppStyles.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, indexDetails) =>
                                    const SizedBox(
                                      height: 10,
                                    ),
                                separatorBuilder: (context, indexDetails) =>
                                    Row(
                                      children: [
                                        Text(
                                          '${index + 1} - ',
                                          style: AppStyles.textStyleReg14,
                                        ),
                                        Text(
                                            servicesList[index]
                                                .details[indexDetails],
                                            style: AppStyles
                                                .textStyleSemiBoldGreen14),
                                      ],
                                    ),
                                itemCount: servicesList[index].details.length),
                          )
                        ],
                      ),
                    );
                  });
            });
  }
}