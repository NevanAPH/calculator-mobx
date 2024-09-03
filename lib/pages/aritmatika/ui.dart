import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_management/stores/aritmatika.dart';

class AritmatikaPage extends StatelessWidget {
  final TextEditingController angka1Controller = TextEditingController();
  final TextEditingController angka2Controller = TextEditingController();

  // Menggunakan instance dari AritmatikaStore
  final Aritmatika aritmatikaStore = Aritmatika();

  AritmatikaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aritmatika dengan MobX'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextField(
                controller: angka1Controller,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Angka 1',
                  fillColor: Color(0xFFE4E5E9),
                  filled: true,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: angka2Controller,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Angka 2',
                  fillColor: Color(0xFFE4E5E9),
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final double value1 = double.parse(angka1Controller.text);
                    final double value2 = double.parse(angka2Controller.text);

                    aritmatikaStore.penjumlahan(value1, value2);
                  },
                  child: const Text("+"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    final double value1 = double.parse(angka1Controller.text);
                    final double value2 = double.parse(angka2Controller.text);

                    aritmatikaStore.pengurangan(value1, value2);
                  },
                  child: const Text("-"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    final double value1 = double.parse(angka1Controller.text);
                    final double value2 = double.parse(angka2Controller.text);

                    aritmatikaStore.perkalian(value1, value2);
                  },
                  child: const Text("*"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    final double value1 = double.parse(angka1Controller.text);
                    final double value2 = double.parse(angka2Controller.text);

                    aritmatikaStore.pembagian(value1, value2);
                  },
                  child: const Text("/"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    final double value1 = double.parse(angka1Controller.text);
                    final double value2 = double.parse(angka2Controller.text);

                    aritmatikaStore.modulus(value1, value2);
                  },
                  child: const Text('%'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Observer(
              builder: (_) =>
                  Text(
                    'Hasil: ${aritmatikaStore.hasil}',
                    style: const TextStyle(fontSize: 24),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
