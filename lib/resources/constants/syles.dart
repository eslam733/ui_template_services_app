import 'package:flutter/material.dart';

import '../../helper/router/custom_page_transition.dart';

class AppStyles {
  static const primaryColor = Color(0xFF401145);
  static const textColor = Color(0xFF020202);
  static const backgroundColor = Color(0xFFFAFAFA);
  static const white = Color(0xFFFFFFFF);
  static const geryColor = Color(0xff707070);
  static const deepGeryColor = Color(0xff7A7D80);
  static const disabledButtonColor = Color.fromARGB(255, 165, 163, 163);
  static const greyLightColor = Color(0xFFF7F7F7);
  static const greenColor = Color(0xFF86AA34);
  static const iconGeryColor = Color(0xffCCCCCC);
  static final Map<int, Color> _primaryColorMap = {
    50: primaryColor,
    100: primaryColor,
    200: primaryColor,
    300: primaryColor,
    400: primaryColor,
    500: primaryColor,
    600: primaryColor,
    700: primaryColor,
    800: primaryColor,
    900: primaryColor,
  };

  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo',
    primarySwatch: MaterialColor(
      0xFF401145,
      _primaryColorMap,
    ),
    scaffoldBackgroundColor: backgroundColor,
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.android: CustomPageTransitionBuilder(),
      TargetPlatform.iOS: CustomPageTransitionBuilder(),
    }),
  );

  //reg fonts
  static const textStyleReg10 = TextStyle(fontSize: 10);
  static const textStyleReg12 = TextStyle(fontSize: 12, color: textColor);
  static const textStyleReg14 = TextStyle(fontSize: 14);
  static const textStyleReg16 = TextStyle(fontSize: 16);
  static const textStyleReg17 = TextStyle(fontSize: 17);
  static const textStyleReg18 = TextStyle(fontSize: 18);
  static const textStyleReg20 = TextStyle(fontSize: 20);
  static const textStyleReg22 = TextStyle(fontSize: 22, color: textColor);
  static const textStyleRegGrey14 = TextStyle(
    fontSize: 14,
    color: geryColor,
  );

  //semi bold fonts
  static const textStyleSemiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyleSemiBold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );
  static const textStyleSemiBold22 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
  static const textStyleSemiBoldPrim12 = TextStyle(
    fontFamily: 'Cairo',
    color: primaryColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const textStyleSemiBoldPrim16 = TextStyle(
    fontFamily: 'Cairo',
    color: primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyleSemiBold14 = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const textStyleSemiBoldGreen14 = TextStyle(
      fontFamily: 'Cairo',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: greenColor);

  static const textStyleSemiBold18 = TextStyle(
    fontFamily: 'Cairo',
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const textStyleSemiBoldGrey14 = TextStyle(
    fontFamily: 'Cairo',
    color: geryColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  //bold fonts
  static const textStyleBold14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
   static const textStyleBoldGreen14 = TextStyle(
    fontSize: 14,
    color: greenColor, 
    fontWeight: FontWeight.bold,
  );
  static const textStyleBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const textStyleBoldBlack18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textColor);
  static const textStyleBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  static const textStyleBoldWhite16 = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.w800,
  );
  static const textStyleBoldWhite22 = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const textStyleBold22 = TextStyle(
    fontSize: 22,
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static const textStyleBold24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static final outlineBorder = OutlineInputBorder(
    borderSide: const BorderSide(style: BorderStyle.none),
    borderRadius: BorderRadius.circular(16),
  );
  static final searchInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
  );
}
