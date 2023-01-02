import 'package:country_picker/country_picker.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'helper/router/router.dart';
import 'pages/root/root_screen.dart';
import 'resources/constants/syles.dart';
import 'resources/translations/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();

  runApp(
    DevicePreview(
        enabled: false,
        builder: (context) {
          return EasyLocalization(
            supportedLocales: const [Locale('en'), Locale('ar')],
            path: 'assets/translations',
            fallbackLocale: const Locale('ar'),
            startLocale: const Locale('ar'),
            useOnlyLangCode: true,
            assetLoader: const CodegenLoader(),
            child: const ProviderScope(child: KayaanApp()),
          );
        }),
  );
}

class KayaanApp extends StatelessWidget {
  const KayaanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates
        ..add(CountryLocalizations.delegate),
      debugShowCheckedModeBanner: false,
      navigatorKey: RoutesHelper.navigatorKey,
      title: 'Flutter Demo',
      theme: AppStyles.appTheme,
      initialRoute: RootScreen.routeName,
      onGenerateRoute: RoutesHelper.generateRoute,
    );
  }
}
