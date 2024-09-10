import 'package:flutter/material.dart';
import '../../../stores/bangundatar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class BangunDatarPersegi extends StatelessWidget {
  final TextEditingController _sisiController = TextEditingController();

  final BangunDatar state = BangunDatar();

  BangunDatarPersegi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Persegi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _sisiController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Panjang Sisi',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final double sisi = double.parse(_sisiController.text);

                state.persegi(sisi);
              },
              child: const Text('Hitung Keliling'),
            ),
            const SizedBox(height: 20),
            Observer(
              builder: (_) => Text(
                'Keliling Persegi: ${state.hasil}',
                style: const TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
