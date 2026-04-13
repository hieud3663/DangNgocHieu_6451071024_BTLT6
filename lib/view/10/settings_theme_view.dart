import 'package:flutter/material.dart';

class SettingsThemeView extends StatelessWidget {
  const SettingsThemeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Theme'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'light'),
              child: const Text('Light'),
            ),
            const SizedBox(width: 12),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'dark'),
              child: const Text('Dark'),
            ),
          ],
        ),
      ),
    );
  }
}
