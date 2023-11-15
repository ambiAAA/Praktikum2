import 'package:flutter/material.dart';
import 'package:praktikum_mobile_2/pages/list.dart';
//import 'package:praktikum_mobile_2/pages/login.dart';
import 'package:praktikum_mobile_2/pages/login2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login2(),
      routes: {'/list': (context) => List()},
    );
  }
}
