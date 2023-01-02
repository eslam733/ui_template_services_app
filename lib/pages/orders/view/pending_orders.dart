import 'package:flutter/material.dart';
import 'package:kayaan/pages/orders/controller/helper/enums.dart';
import 'package:kayaan/pages/orders/view/order_item.dart';

class PendingOrders extends StatelessWidget {
  const PendingOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      itemCount: 3,
      itemBuilder: (context, index) => OrderItem(
        index: index,
        orderStatus: OrderStatus.pending,
      ),
    );
  }
}
