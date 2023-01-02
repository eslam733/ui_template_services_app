import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/pages/account/view/account_screen.dart';
import 'package:kayaan/pages/edit_profile/view/edit_profile_screen.dart';
import 'package:kayaan/pages/home/view/home_screen.dart';
import 'package:kayaan/pages/no_internet/no_internet_screen.dart';
import '../../helper/router/route_error_screen.dart';
import '../main/view/main_screen.dart';
import '../sign_in/view/sign_in_screen.dart';
import '../splash_screen/splash_screen.dart';
import 'root_provider.dart';

class RootScreen extends ConsumerWidget {
  static const routeName = "/";
  const RootScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(rootScreenProvider).when(
          data: (FirstLaunchStatus status) {
            switch (status) {
              case FirstLaunchStatus.noConnection:
                return const NoInternetScreen();
              case FirstLaunchStatus.authed:
                return const SplashScreen();
              case FirstLaunchStatus.notAuthed:
                // return const MainScreen(0);
                return const SignInScreen();

              default:
                return const SplashScreen();
            }
          },
          error: (e, s) {
            return const RouteErrorScreen("حدث خطأ ما");
          },
          loading: () => const SplashScreen(),
        );
  }
}
