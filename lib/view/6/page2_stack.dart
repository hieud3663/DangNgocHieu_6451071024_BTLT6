import 'package:flutter/material.dart';

class Page2Stack extends StatelessWidget {
  const Page2Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2 Stack'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Đây là trang Page 2 Stack !',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () =>
                  Navigator.popUntil(context, ModalRoute.withName('/home_stack')),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
