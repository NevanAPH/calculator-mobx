import 'package:flutter/material.dart';
import '../stores/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({super.key});

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  final TextEditingController _sisiController = TextEditingController();

  final counter Persegi = counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Persegi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _sisiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Panjang Sisi',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final double sisi = double.parse(_sisiController.text);

                Persegi.persegi(sisi);
              },
              child: const Text('Hitung Keliling'),
            ),
            SizedBox(height: 20),
            Observer(
              builder: (_) => Text(
                'Keliling Persegi: ${Persegi.hasil}',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
