import 'package:flutter/material.dart';

class HomeOrderView extends StatelessWidget {
  const HomeOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Order'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(
            context,
            '/order',
            arguments: {'id': 101, 'name': 'Alice'},
          ),
          child: const Text('View Order'),
        ),
      ),
    );
  }
}
