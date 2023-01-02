import 'package:kayaan/helper/router/router.dart';
import 'package:kayaan/pages/new_order/request_order/view/request_order_screen.dart';

class StateContinueClick {
  click() {
    pushNamed(
        RoutesHelper.navigatorKey.currentContext, RequestOrderScreen.routeName);
  }
}
