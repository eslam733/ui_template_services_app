import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/helper/router/router.dart';
import 'package:kayaan/pages/services/view/services_screen.dart';

class ServicesShow {
  click() {
  pushNamed(RoutesHelper.navigatorKey.currentContext, ServicesScreen.routeName);

  }
}