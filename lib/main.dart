// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/Landing_page.dart';

import 'My_MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLandingPage(),
      routes: {
        'MyMainPage': (context) => MyMainPage(),
      },
    );
  }
}
