import 'package:flutter/material.dart';
import 'content/persegi.dart';
import 'content/segitiga.dart';
import 'content/lingkaran.dart';


class BangunDatarPage extends StatefulWidget {
  const BangunDatarPage({super.key});

  @override
  State<BangunDatarPage> createState() => _BangunDatarPageState();
}

class _BangunDatarPageState extends State<BangunDatarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Bangun Datar'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Persegi'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PersegiPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Lingkaran'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LingkaranPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Segitiga'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SegitigaPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
