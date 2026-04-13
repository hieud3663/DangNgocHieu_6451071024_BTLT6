import 'package:flutter/material.dart';

class HomeThemeView extends StatefulWidget {
  const HomeThemeView({super.key});

  @override
  State<HomeThemeView> createState() => _HomeThemeViewState();
}

class _HomeThemeViewState extends State<HomeThemeView> {
  bool isDark = false;

  Future<void> _changeTheme() async {
    final dynamic result = await Navigator.pushNamed(
      context,
      '/settings_theme',
    );

    final String? selectedTheme = result is String ? result : null;

    if (selectedTheme == null) {
      return;
    }

    setState(() {
      isDark = selectedTheme == 'dark';
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color bgColor = isDark ? Colors.black87 : Colors.white;
    final Color textColor = isDark ? Colors.white : Colors.black87;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Theme'),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isDark ? 'Current Theme: Dark' : 'Current Theme: Light',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _changeTheme,
              child: const Text('Change Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
