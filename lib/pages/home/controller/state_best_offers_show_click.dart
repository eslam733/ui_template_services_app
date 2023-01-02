import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kayaan/helper/router/router.dart';
import 'package:kayaan/pages/best_offers/view/best_offers_screen.dart';
import 'package:kayaan/pages/home/view/components/best_offers_section.dart';
import 'package:kayaan/pages/services/view/services_screen.dart';

class BestOffersShow  {

  click() {
  pushNamed(RoutesHelper.navigatorKey.currentContext, BestOffersScreen.routeName);

  }
}