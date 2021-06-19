import 'package:flutter/material.dart';
import 'package:ui_challanges/day/day_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui Challanges',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Day1(),
    );
  }
}
