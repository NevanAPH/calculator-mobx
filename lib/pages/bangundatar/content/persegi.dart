import 'package:flutter/material.dart';
import '../../../stores/bangundatar.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({super.key});

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  final TextEditingController _sisiController = TextEditingController();

  final BangunDatar state = BangunDatar();

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
