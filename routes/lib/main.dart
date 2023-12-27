import 'package:flutter/material.dart';
import 'package:routes/pages/detail_page.dart';
import 'package:routes/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const BottomNavigation(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const BottomNavigation(),
        '/detail': (context) => const DetailPage(),
      },
    );
  }
}
