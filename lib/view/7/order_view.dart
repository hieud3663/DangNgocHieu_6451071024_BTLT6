import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map?;
    final int orderId = args?['id'] as int? ?? 0;
    final String customerName = args?['name'] as String? ?? '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Screen'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          'Order #$orderId for $customerName',
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
