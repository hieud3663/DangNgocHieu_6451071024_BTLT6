import 'package:flutter/material.dart';

class ConfirmView extends StatelessWidget {
  const ConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Screen'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Yes'),
            ),
            const SizedBox(width: 12),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('No'),
            ),
          ],
        ),
      ),
    );
  }
}
