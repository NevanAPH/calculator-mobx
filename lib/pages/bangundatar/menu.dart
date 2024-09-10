import 'package:flutter/material.dart';
import 'content/persegi.dart';
import 'content/segitiga.dart';
import 'content/lingkaran.dart';


class ListBangunDatarMenu extends StatefulWidget {
  const ListBangunDatarMenu({super.key});

  @override
  State<ListBangunDatarMenu> createState() => _ListBangunDatarMenuState();
}

class _ListBangunDatarMenuState extends State<ListBangunDatarMenu> {
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
                MaterialPageRoute(builder: (context) => BangunDatarPersegi()),
              );
            },
          ),
          ListTile(
            title: const Text('Lingkaran'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BangunDatarLingkaran()),
              );
            },
          ),
          ListTile(
            title: const Text('Segitiga'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BangunDatarSegitiga()),
              );
            },
          ),
        ],
      ),
    );
  }
}
