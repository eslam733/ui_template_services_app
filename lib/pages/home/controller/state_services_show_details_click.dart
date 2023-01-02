import 'package:kayaan/helper/router/router.dart';
import 'package:kayaan/pages/services_details/view/services_details_screen.dart';

class ServicesShowDetailsClick {
  click() {
    pushNamed(RoutesHelper.navigatorKey.currentContext, ServicesDetailsScreen.routeName);
  }
}