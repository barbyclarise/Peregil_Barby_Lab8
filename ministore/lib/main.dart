import 'package:flutter/material.dart';
import 'package:ministore/category_screen.dart';
import 'package:ministore/home_screen.dart';
import 'package:ministore/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BarBee Mart',
      debugShowCheckedModeBanner: false,
      home: MainScreen (),
    );
  }
}
