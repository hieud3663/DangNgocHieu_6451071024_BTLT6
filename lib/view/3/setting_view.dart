import 'package:flutter/material.dart';
import 'package:flutter_baitap_chuong7/widget/button_custom.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Đây là trang setting !',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ButtonCustom(text: 'Back', onPressed: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
