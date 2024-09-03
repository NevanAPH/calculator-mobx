import 'package:flutter/material.dart';

class AdapterListMenu extends StatelessWidget {
  //final String image;
  final String title;
  final String route;

  const AdapterListMenu(
      {super.key,
      //required this.image,
      required this.title,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: ElevatedButton.icon(
        onPressed: () => Navigator.of(context).pushNamed(route),
        //icon: Image.asset(image, height: 52),
        label: Text(title),
        style: ElevatedButton.styleFrom(
            alignment: Alignment.centerLeft,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
    );
  }
}
