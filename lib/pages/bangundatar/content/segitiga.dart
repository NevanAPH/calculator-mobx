import 'package:flutter/material.dart';
import '../../../stores/bangundatar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SegitigaPage extends StatelessWidget {
  final TextEditingController _sisi1Controller = TextEditingController();
  final TextEditingController _sisi2Controller = TextEditingController();
  final TextEditingController _sisi3Controller = TextEditingController();

  final BangunDatar state = BangunDatar();

  SegitigaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Segitiga'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _sisi1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Sisi Pertama',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _sisi2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Sisi kedua',
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _sisi3Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Sisi ketiga',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final double sisi1 = double.parse(_sisi1Controller.text);
                final double sisi2 = double.parse(_sisi2Controller.text);
                final double sisi3 = double.parse(_sisi3Controller.text);

                state.segitiga(sisi1, sisi2, sisi3);
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
