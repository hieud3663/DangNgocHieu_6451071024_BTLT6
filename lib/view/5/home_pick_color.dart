import 'package:flutter/material.dart';

import 'pick_color_view.dart';

class HomePickColorView extends StatefulWidget {
	const HomePickColorView({super.key});

	@override
	State<HomePickColorView> createState() => _HomePickColorViewState();
}

class _HomePickColorViewState extends State<HomePickColorView> {
	Color selectedColor = Colors.red;

	Future<void> _pickColor() async {
		final Color? picked = await Navigator.push<Color>(
			context,
			MaterialPageRoute(
				builder: (_) => PickColorView(currentColor: selectedColor),
			),
		);

		if (picked != null) {
			setState(() {
				selectedColor = picked;
			});
		}
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: const Text('Bai 5: Pick Color'),
				backgroundColor: Colors.teal,
				foregroundColor: Colors.white,
			),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						const Text(
							'Current Color',
							style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
						),
						const SizedBox(height: 16),
						Container(
							width: 140,
							height: 140,
							decoration: BoxDecoration(
								color: selectedColor,
								borderRadius: BorderRadius.circular(16),
								border: Border.all(color: Colors.black26),
							),
						),
						const SizedBox(height: 20),
						ElevatedButton(
							onPressed: _pickColor,
							child: const Text('Pick Color'),
						),
					],
				),
			),
		);
	}
}

