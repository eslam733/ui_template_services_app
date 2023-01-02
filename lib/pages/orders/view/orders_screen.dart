import 'package:flutter/material.dart';
import 'package:kayaan/pages/orders/view/pending_orders.dart';
import 'package:kayaan/widgets/appbar_widget.dart';

import 'compeleted_orders.dart';
import 'orders_appbar.dart';

class OrdersScreen extends StatelessWidget {
  static const String routeName = "/orders";
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: OrdersAppBar(),
        body: TabBarView(
          children: [
            PendingOrders(),
            CompeletedOrders(),
          ],
        ),
      ),
    );
  }
}
