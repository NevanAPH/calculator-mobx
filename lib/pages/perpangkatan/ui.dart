import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_management/widgets/button.dart';
import '../../stores/pangkat.dart';
import '../../widgets/textField.dart';

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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            MyTextField(textController: base, label: "Base"),
            SizedBox(
              height: 10,
            ),
            MyTextField(textController: power, label: "Power"),
            const SizedBox(height: 20),
            Observer(
              builder: (_) => Text(
                'Result: ${counter.result}',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            PrimaryButton(onPressed: () {
              final int baseValue = int.tryParse(base.text) ?? 1;
              final int powerValue = int.tryParse(power.text) ?? 0;
              counter.count(baseValue, powerValue);
            }, child: Text("Count", style: TextStyle(color: Colors.black),),)
          ],
        ),
      ),
    );
  }
}
