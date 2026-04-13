import 'package:flutter/material.dart';
import 'package:flutter_baitap_chuong7/view/8/confirm_view.dart';

class HomeConfirmView extends StatelessWidget {
  const HomeConfirmView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Confirm'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final bool? result = await Navigator.push<bool>(
              context,
              MaterialPageRoute(builder: (_) => const ConfirmView()),
            );

            if (!context.mounted) {
              return;
            }

            final String message = result == true
                ? 'Delete confirmed'
                : 'Delete canceled';

            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
          child: const Text('Delete Item'),
        ),
      ),
    );
  }
}
