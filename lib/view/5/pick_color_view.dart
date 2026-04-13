import 'package:flutter/material.dart';

class PickColorView extends StatelessWidget {
	final Color currentColor;

	const PickColorView({super.key, required this.currentColor});

	@override
	Widget build(BuildContext context) {
		final colors = <MapEntry<String, Color>>[
			const MapEntry('Red', Colors.red),
			const MapEntry('Blue', Colors.blue),
			const MapEntry('Green', Colors.green),
		];

		return Scaffold(
			appBar: AppBar(
				title: const Text('Pick Color'),
				backgroundColor: Colors.teal,
				foregroundColor: Colors.white,
			),
			body: ListView.separated(
				itemCount: colors.length,
				separatorBuilder: (_, __) => const Divider(height: 1),
				itemBuilder: (context, index) {
					final item = colors[index];
					final isSelected = item.value == currentColor;

					return ListTile(
						leading: CircleAvatar(backgroundColor: item.value),
						title: Text(item.key),
						trailing: isSelected ? const Icon(Icons.check) : null,
						onTap: () {
							Navigator.pop(context, item.value);
						},
					);
				},
			),
		);
	}
}

