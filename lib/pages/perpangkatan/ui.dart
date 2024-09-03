import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../stores/pangkat.dart';

class PerpangkatanPage extends StatelessWidget {
  const PerpangkatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Pangkat counter = Pangkat();
    final TextEditingController base = TextEditingController();
    final TextEditingController power = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('MobX Calculator'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: base,
                decoration: const InputDecoration(
                  hintText: "Base",
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: power,
                decoration: const InputDecoration(
                  hintText: "Power",
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              Observer(
                builder: (_) => Text(
                  'Result: ${counter.result}',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final int baseValue = int.parse(base.text) ?? 1;
          final int powerValue = int.parse(power.text) ?? 0;
          counter.count(baseValue, powerValue);
        },
        child: const Icon(Icons.calculate),
      ),
    );
  }
}
