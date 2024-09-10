import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_management/stores/aritmatika.dart';
import 'package:state_management/widgets/button.dart';
import 'package:state_management/widgets/textField.dart';

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
              child: MyTextField(textController: angka1Controller, label: "Number")
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: MyTextField(textController: angka2Controller, label: "Number")
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PrimaryButton(onPressed: () {
                  final double value1 = double.tryParse(angka1Controller.text) ?? 0;
                  final double value2 = double.tryParse(angka2Controller.text) ?? 0;

                  aritmatikaStore.penjumlahan(value1, value2);
                }, child: const Text("+")),
                const SizedBox(width: 10),
                PrimaryButton(onPressed: () {
                  final double value1 = double.tryParse(angka1Controller.text) ?? 0;
                  final double value2 = double.tryParse(angka2Controller.text) ?? 0;

                  aritmatikaStore.pengurangan(value1, value2);
                }, child: const Text("-")),
                const SizedBox(width: 10),
                PrimaryButton(onPressed: () {
                  final double value1 = double.tryParse(angka1Controller.text) ?? 0;
                  final double value2 = double.tryParse(angka2Controller.text) ?? 0;

                  aritmatikaStore.perkalian(value1, value2);
                }, child: const Text("X")),
                const SizedBox(width: 10),
                PrimaryButton(onPressed: () {
                  final double value1 = double.tryParse(angka1Controller.text) ?? 0;
                  final double value2 = double.tryParse(angka2Controller.text) ?? 0;

                  aritmatikaStore.pembagian(value1, value2);
                }, child: const Text("/")),
                const SizedBox(width: 10),
                PrimaryButton(onPressed: () {
                  final double value1 = double.tryParse(angka1Controller.text) ?? 0;
                  final double value2 = double.tryParse(angka2Controller.text) ?? 0;

                  aritmatikaStore.modulus(value1, value2);
                }, child: const Text("%")),
                const SizedBox(width: 10),
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
