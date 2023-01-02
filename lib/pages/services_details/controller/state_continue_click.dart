import 'package:kayaan/helper/router/router.dart';
import 'package:kayaan/pages/new_order/select_services/view/services_type_order_screen.dart';

class StateContinueClick {
  click() {
    pushNamed(RoutesHelper.navigatorKey.currentContext,
        ServicesTypeOrderScreen.routeName);
  }
}
