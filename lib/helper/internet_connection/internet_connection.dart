// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:kayaan/resources/translations/locale_keys.g.dart';
// import '../dialogs/snackbar.dart';

// class InternetConnectionListener {
//   static bool isInternetConnected = true;
//   void init() {
//     Connectivity()
//         .onConnectivityChanged
//         .listen((ConnectivityResult result) async {
//       print("result.name");
//       print(result.name);
//       if (result == ConnectivityResult.none) {
//         bool isDeviceConnected =
//             await InternetConnectionChecker().hasConnection;
//         print("isDeviceConnected");
//         print(isDeviceConnected);
//         if (!isDeviceConnected) {
//           //no internet
//           isInternetConnected = false;
//           // await Navigator.of(
//           //   RoutesHelper.navigatorKey.currentContext!,
//           // ).pushNamedAndRemoveUntil(
//           //   NoInternetScreen.routeName,
//           //   (route) => false,
//           // );
//           showMySnackbar(LocaleKeys.noInternet.tr());
//         }
//       } else if (!isInternetConnected) {
//         //internet back
//         isInternetConnected = true;
//         // await Navigator.of(
//         //   RoutesHelper.navigatorKey.currentContext!,
//         // ).pushNamedAndRemoveUntil(
//         //   RootScreen.routeName,
//         //   (route) => false,
//         // );
//         showMySnackbar(LocaleKeys.internetBack.tr());
//       }
//     });
//   }
// }
