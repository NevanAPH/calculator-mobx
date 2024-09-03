import 'package:flutter/material.dart';
import 'package:state_management/adapters/list_menu.dart';
import 'package:state_management/models/list_menu.dart';

List<ModelListMenu> listMenu = [
  ModelListMenu(image: 'assets/images/aritmatika.png', title: 'Persegi', route: '/bangun-ruang/persegi'),
  ModelListMenu(image: 'assets/images/bangun_Ruang.png', title: 'Prisma', route: '/bangun-ruang/prisma'),
];

class ListBangunRuangMenu extends StatelessWidget {
  const ListBangunRuangMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('List Menu Bangun Ruang'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 32),
        child: ListView.builder(
          itemCount: listMenu.length,
          itemBuilder: (context, index) {
            return AdapterListMenu(
              //image: listMenu[index].image,
              title: listMenu[index].title,
              route: listMenu[index].route
            );
          }
        )
      )
    );
  }
}