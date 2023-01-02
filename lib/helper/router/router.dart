import 'package:flutter/material.dart';
import 'package:kayaan/pages/choose_language/view/choose_language_screen.dart';
import 'package:kayaan/pages/edit_profile/view/edit_profile_screen.dart';
import 'package:kayaan/pages/help/help_screen.dart';
import 'package:kayaan/pages/main/view/main_screen.dart';
import 'package:kayaan/pages/no_internet/no_internet_screen.dart';
import 'package:kayaan/pages/notifications/view/notifications_screen.dart';
import 'package:kayaan/pages/otp_code/view/otp_code_screen.dart';
import 'package:kayaan/pages/sign_in/view/sign_in_screen.dart';
import '../../pages/best_offers/view/best_offers_screen.dart';
import '../../pages/home/view/home_screen.dart';
import '../../pages/new_order/request_order/view/request_order_screen.dart';
import '../../pages/new_order/select_services/view/services_type_order_screen.dart';
import '../../pages/root/root_screen.dart';
import '../../pages/services/view/services_screen.dart';
import '../../pages/services_details/view/services_details_screen.dart';
import '../../pages/sign_up/view/sign_up_screen.dart';
import 'route_error_screen.dart';

class RoutesHelper {
  static final navigatorKey = GlobalKey<NavigatorState>();
  static Route generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case RootScreen.routeName:
        return pageRoute(const RootScreen());
      case SignInScreen.routeName:
        return pageRoute(const SignInScreen());
      case SignUpScreen.routeName:
        return pageRoute(const SignUpScreen());
      case OtpCodeScreen.routeName:
        return pageRoute(const OtpCodeScreen());
      case MainScreen.routeName:
        return pageRoute(const MainScreen(0));
      case HomeScreen.routeName:
        return pageRoute(const HomeScreen());
      case NoInternetScreen.routeName:
        return pageRoute(const NoInternetScreen());
      case EditProfileScreen.routeName:
        return pageRoute(const EditProfileScreen());
      case NotificationsScreen.routeName:
        return pageRoute(const NotificationsScreen());
      case ChooseLanguageScreen.routeName:
        return pageRoute(const ChooseLanguageScreen());
      case HelpScreen.routeName:
        return pageRoute(const HelpScreen());
      case ServicesScreen.routeName:
        return pageRoute(const ServicesScreen());
      case BestOffersScreen.routeName:
        return pageRoute(const BestOffersScreen());
      case ServicesDetailsScreen.routeName:
        return pageRoute(const ServicesDetailsScreen());
      case ServicesTypeOrderScreen.routeName:
        return pageRoute(const ServicesTypeOrderScreen());
      case RequestOrderScreen.routeName:
        return pageRoute(RequestOrderScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => const RouteErrorScreen("Route error"),
        );
    }
  }

  static MaterialPageRoute pageRoute(Widget screen, {Object? arg}) {
    return MaterialPageRoute(
      builder: (context) => screen,
    );
  }
}

void pushNamedAndRemoveUntil(context, route, {arguments}) {
  Navigator.of(context).pushNamedAndRemoveUntil(route, ModalRoute.withName('/'),
      arguments: arguments);
}

void pushNamed(context, route, {arguments}) {
  Navigator.of(context).pushNamed(route, arguments: arguments);
}
