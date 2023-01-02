import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kayaan/resources/translations/locale_keys.g.dart';
import 'package:country_picker/country_picker.dart';
import '../../../../resources/constants/syles.dart';
import '../../../../widgets/text_field_widget.dart';

class PhoneInputWidget extends StatelessWidget {
  const PhoneInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFieldWidget(
      outlineInputBorder: AppStyles.outlineBorder,
      suffixIcon: const CodePickerWidget(),
      icon: const Icon(Icons.call_outlined),
      hintText: LocaleKeys.phoneNumber.tr(),
      keyboardType: TextInputType.phone,
      key: key,
    );
  }
}

class CodePickerWidget extends StatefulWidget {
  const CodePickerWidget({Key? key}) : super(key: key);

  @override
  State<CodePickerWidget> createState() => _CodePickerWidgetState();
}

class _CodePickerWidgetState extends State<CodePickerWidget> {
  String flagEmoji = "🇪🇬";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          showCountryPicker(
            countryListTheme: CountryListThemeData(
              bottomSheetHeight: MediaQuery.of(context).size.height * 0.6,
              inputDecoration: InputDecoration(
                border: AppStyles.searchInputBorder,
                focusedBorder: AppStyles.searchInputBorder,
                enabledBorder: AppStyles.searchInputBorder,
                hintText: LocaleKeys.codeHintText.tr(),
              ),
            ),
            showPhoneCode: true,
            onSelect: ((country) {
              setState(() {
                flagEmoji = country.flagEmoji;
              });
            }),
            context: context,
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(CupertinoIcons.chevron_down, size: 15),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                flagEmoji,
                style: const TextStyle(fontSize: 23),
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
