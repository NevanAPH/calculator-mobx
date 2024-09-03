import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_management/stores/bangunruang.dart';

import 'package:state_management/widgets/button.dart';

class BangunRuangPrisma extends StatelessWidget {
  final TextEditingController sisiController = TextEditingController();
  final TextEditingController alasController = TextEditingController();
  final TextEditingController tinggiController = TextEditingController();

  final result = BangunRuang();

  BangunRuangPrisma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Keliling Bangun Ruang Prisma'),
        ),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              TextField(
                controller: sisiController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                ],
                decoration: const InputDecoration(labelText: 'Sisi'),
              ),
              TextField(
                controller: alasController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                ],
                decoration: const InputDecoration(labelText: 'Alas'),
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
                  if (sisiController.text.isEmpty ||
                      alasController.text.isEmpty ||
                      tinggiController.text.isEmpty) {
                    return;
                  }

                  result.hitungKelilingLuasPrisma(
                      double.parse(sisiController.text),
                      double.parse(alasController.text),
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
