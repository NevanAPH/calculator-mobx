import 'package:flutter/material.dart';
import 'content/persegi.dart';
import 'content/segitiga.dart';
import 'content/lingkaran.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
                MaterialPageRoute(builder: (context) => const SegitigaPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
