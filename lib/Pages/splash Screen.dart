import 'package:flutter/material.dart';
import 'package:smart_money/Pages/Login.dart';
import 'package:smart_money/Widget/theme.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center, // Menyejajarkan elemen secara vertikal
      crossAxisAlignment: CrossAxisAlignment.center, // Menyejajarkan elemen secara horizontal
      children: [
        Image(image: AssetImage('assets/Logo.png')),
        SizedBox(height: 20),
        Text('Smart Money', style: titlesplash),
      ],
    ),
  ),
);
  }}
