import 'package:flutter/material.dart';
import 'package:kayaan/resources/constants/syles.dart';

class DropDown extends StatelessWidget {
  final bool topPadding;
  final bool isEnable;
  final Function? onTap;
  final List<String> menu;
  int menuIndex;
  Function(String? value) onChanged;
  String icon;
  DropDown({
    Key? key,
    this.icon = '',
    required this.menu,
    this.topPadding = true,
    this.onTap,
    this.isEnable = true,
    required this.menuIndex,
    required this.onChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300]!,
              blurRadius: 5.0,
              offset: const Offset(0, 2)),
        ],
        borderRadius: BorderRadius.circular(16),
        color: AppStyles.white,
      ),
      height: 55,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (icon != '')
            Image.asset(
              icon,
              color: AppStyles.primaryColor,
              width: 20,
            ),
          if (icon != '')
            const SizedBox(
              width: 10,
            ),
          Expanded(
              child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: topPadding ? 3.3 : 0),
                  child: DropdownButton<String>(
                    underline: Container(
                      height: 0,
                    ),
                    value: menu[menuIndex],
                    isExpanded: true,
                    icon: null,
                    items: menu.map((value) {
                      return DropdownMenuItem<String>(
                        enabled: isEnable,
                        onTap: () {
                          if(onTap != null) onTap!();
                        },
                        value: value,
                        child: Row(
                          children: [
                            Text(
                              value,
                              overflow: TextOverflow.ellipsis,
                              // style: const TextStyle(color: greyColor),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      onChanged(value);
                    },
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
