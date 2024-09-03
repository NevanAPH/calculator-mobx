import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_management/stores/bangunruang.dart';

import 'package:state_management/widgets/button.dart';

class BangunRuangPersegi extends StatelessWidget {
  final TextEditingController panjangController = TextEditingController();
  final TextEditingController lebarController = TextEditingController();
  final TextEditingController tinggiController = TextEditingController();

  final result = BangunRuang();

  BangunRuangPersegi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Keliling Bangun Ruang Persegi'),
        ),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              TextField(
                controller: panjangController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                ],
                decoration: const InputDecoration(labelText: 'Panjang'),
              ),
              TextField(
                controller: lebarController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                ],
                decoration: const InputDecoration(labelText: 'Lebar'),
              ),
              TextField(
                controller: tinggiController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                ],
                decoration: const InputDecoration(labelText: 'Tinggi'),
              ),
              const SizedBox(height: 16),
              PrimaryButton(
                onPressed: () {
                  if (panjangController.text.isEmpty ||
                      lebarController.text.isEmpty ||
                      tinggiController.text.isEmpty) {
                    return;
                  }

                  result.hitungKelilingLuasPersegi(
                      double.parse(panjangController.text),
                      double.parse(lebarController.text),
                      double.parse(tinggiController.text));
                },
                child: const Text('Hitung'),
              ),
              const SizedBox(height: 16),
              Observer(builder: (_) {
                if (result.value != null) {
                  return Text('Hasil: ${result.value.toString()}');
                }
                return const SizedBox();
              }),
            ])));
  }
}
