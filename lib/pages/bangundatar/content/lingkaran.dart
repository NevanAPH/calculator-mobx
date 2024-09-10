import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_management/stores/bangundatar.dart';

class BangunDatarLingkaran extends StatelessWidget {
  final TextEditingController _radiusController = TextEditingController();
  double? _keliling;

  final BangunDatar state = BangunDatar();

  BangunDatarLingkaran({super.key});

  void _calculateArea() {
    final radius = double.tryParse(_radiusController.text);
    if (radius != null) state.lingkaran(radius);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Lingkaran'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _radiusController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Jari-jari',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateArea,
              child: const Text('Hitung Keliling'),
            ),
            const SizedBox(height: 20),
            Observer(builder: (_) {
              if (state.hasil != null) {
                return Text(
                  'Keliling Lingkaran: ${state.hasil}',
                  style: const TextStyle(fontSize: 20),
                );
              }
              return const SizedBox();
            }),
          ],
        ),
      ),
    );
  }
}
