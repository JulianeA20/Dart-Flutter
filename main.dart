import 'package:exemplo/pages/home_page.dart';
import 'package:flutter/material.dart' show BuildContext, MaterialApp, StatelessWidget, ThemeData, Widget, runApp;

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData.dark(),
    );
  }
}
