import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kayaan/resources/constants/syles.dart';

class ServiceItemWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  const ServiceItemWidget({
    super.key,
    required this.imagePath,
    required this.subTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 85,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  width: 2,
                  color: AppStyles.primaryColor,
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffFEF3FF),
                    Colors.white,
                  ],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  stops: [
                    0.4,
                    1.0,
                  ],
                )),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SvgPicture.asset(imagePath),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: AppStyles.textStyleBold22,
                    ),
                    Text(
                      subTitle,
                      style: AppStyles.textStyleReg22.copyWith(
                        color: AppStyles.greenColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
