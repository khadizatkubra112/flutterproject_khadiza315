import 'package:flutter/material.dart';
//import 'package:firstproject/homepage.dart';
import 'package:firstproject/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      //home: Homepage(),
      home: CalculatorPage(),
    );
  }
}
