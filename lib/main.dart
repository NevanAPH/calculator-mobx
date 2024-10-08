import 'package:flutter/material.dart';

// Menu utama
import 'package:state_management/pages/menu.dart';

// Aritmatika
import 'package:state_management/pages/aritmatika/ui.dart';

// Bangun Datar
import 'package:state_management/pages/bangundatar/menu.dart';

// Bangun Ruang
import 'package:state_management/pages/bangunruang/menu.dart';
import 'package:state_management/pages/bangunruang/content/persegi.dart';
import 'package:state_management/pages/bangunruang/content/prisma.dart';

// Perpangkatan
import 'package:state_management/pages/perpangkatan/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const ListMenu(),
      routes: {
        '/aritmatika': (context) => AritmatikaPage(),
        '/bangun-datar': (context) => const ListBangunDatarMenu(),
        '/bangun-ruang': (context) => const ListBangunRuangMenu(),
        '/pangkat': (context) => const PerpangkatanPage(),

        '/bangun-ruang/persegi': (context) => BangunRuangPersegi(),
        '/bangun-ruang/prisma': (context) => BangunRuangPrisma(),
      }
    );
  }
}
