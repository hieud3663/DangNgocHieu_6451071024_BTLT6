import 'package:flutter/material.dart';
import 'package:flutter_baitap_chuong7/utils/validate.dart';
import 'package:flutter_baitap_chuong7/widget/inputdecoration_custom.dart';

class HomeProfileView extends StatefulWidget {
  const HomeProfileView({super.key});

  @override
  _HomeProfileViewState createState() => _HomeProfileViewState();
}

class _HomeProfileViewState extends State<HomeProfileView> {
  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bài 2:  Home -> Profile'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Đây là trang home profile!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            TextField(
              controller: _usernameController,
              decoration: InputDecorationCustom(
                labelText: 'Nhập tên người dùng',
              ).build(),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (!Validate.isValidName(_usernameController.text)){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Tên người dùng không được để trống và phải có ít nhất 3 ký tự')),
                  );
                } else {
                  Navigator.pushNamed(context, '/profile', arguments: _usernameController.text);
                }
              },
              child: const Text('Go to Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
