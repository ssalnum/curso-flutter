import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/order.dart';

import '../models/order_list.dart';
import '../components/app_drawer.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: const Text('Meus Pedidos'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColorDark,
        elevation: 4,
        shadowColor: Colors.grey,
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (ctx, i) => OrderWidget(order: orders.items[i]),
      ),
    );
  }
}
