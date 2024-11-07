import 'package:flutter/material.dart';
import 'package:smart_money/Pages/Login.dart';
import 'package:smart_money/Pages/splash%20Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0XFF181A20), appBarTheme: AppBarTheme(color: Color(0xff13151B))),
      home: LoginScreen(),
    );
  }
}
