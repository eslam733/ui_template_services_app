import 'package:flutter/material.dart';
import 'package:kayaan/pages/account/view/account_screen.dart';
import 'package:kayaan/pages/orders/view/orders_screen.dart';
import 'package:kayaan/pages/wallet/view/wallet_screen.dart';

import '../../../home/view/home_screen.dart';

class CurrentSellectedScreen extends StatelessWidget {
  late final Widget currentSellectedScreen;
  CurrentSellectedScreen(index, {super.key}) {
    currentSellectedScreen = _getCurrentSellectedScreen(index);
  }

  @override
  Widget build(BuildContext context) {
    return currentSellectedScreen;
  }

  Widget _getCurrentSellectedScreen(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const OrdersScreen();
      case 2:
        return const WalletScreen();
      case 3:
        return const AccountScreen();

      default:
        return const HomeScreen();
    }
  }
}
