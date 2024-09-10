import 'package:flutter/material.dart';
import 'package:state_management/adapters/list_menu.dart';
import 'package:state_management/models/list_menu.dart';

List<ModelListMenu> listMenu = [
  ModelListMenu(title: 'Aritmatika', route: '/aritmatika'),
  ModelListMenu(title: 'Bangun Datar', route: '/bangun-datar'),
  ModelListMenu(title: 'Bangun Ruang', route: '/bangun-ruang'),
  ModelListMenu(title: 'Perpangkatan', route: '/pangkat'),
];

class ListMenu extends StatelessWidget {
  const ListMenu({super.key});

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