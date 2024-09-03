import 'package:flutter/material.dart';
import 'package:state_management/widgets/button.dart';
import 'package:state_management/widgets/textField.dart';

class LingkaranPage extends StatefulWidget {
  const LingkaranPage({super.key});

  @override
  State<LingkaranPage> createState() => _LingkaranPageState();
}

class _LingkaranPageState extends State<LingkaranPage> {
  final TextEditingController _radiusController = TextEditingController();
  double? _keliling;

  void _calculateArea() {
    final radius = double.tryParse(_radiusController.text);
    if (radius != null) {
      setState(() {
        _keliling = 2 * 3.14 * radius;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Lingkaran'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyTextField(textController: _radiusController, label: "Jari-jari"),
            const SizedBox(height: 20),
            PrimaryButton(onPressed: _calculateArea, child: const Text('Hitung Keliling')),
            const SizedBox(height: 20),
            if (_keliling != null)
              Text('Luas Lingkaran: $_keliling',
                  style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
