import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/order.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({
    super.key,
    required this.order,
  });

  final Order order;

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final double itemsHeight = (widget.order.products.length * 25) + 10;
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 150,
      ),
      height: _expanded ? itemsHeight + 80 : 80,
      child: SingleChildScrollView(
        child: Card(
          elevation: 4,
          child: Column(
            children: [
              ListTile(
                title: Text('R\$ ${widget.order.total.toStringAsFixed(2)}'),
                subtitle: Text(
                  DateFormat('dd/MM/yyyy hh:mm').format(widget.order.date),
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      _expanded = !_expanded;
                    });
                  },
                  icon: const Icon(Icons.expand_more),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                height: _expanded ? itemsHeight : 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 4,
                  ),
                  height: itemsHeight,
                  child: ListView(
                    children: widget.order.products.map(
                      (product) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(' ${product.quantity}x - R\$ ${product.price}')
                          ],
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
