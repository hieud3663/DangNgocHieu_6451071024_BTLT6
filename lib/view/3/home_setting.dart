import 'package:flutter/material.dart';
import 'package:flutter_baitap_chuong7/view/3/setting_view.dart';
import 'package:flutter_baitap_chuong7/widget/button_custom.dart';

class HomeSettingView extends StatefulWidget {
  const HomeSettingView({super.key});

  @override
  _HomeSettingViewState createState() => _HomeSettingViewState();
}

class _HomeSettingViewState extends State<HomeSettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài 3:  Home -> Setting (MaterialPageRoute)'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Đây là trang Home -> Setting !',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ButtonCustom(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingView()),
                );
              },
              text: 'Go to Setting',
            ),
          ],
        ),
      ),
    );
  }
}
