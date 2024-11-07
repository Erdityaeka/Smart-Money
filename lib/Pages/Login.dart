import 'package:flutter/material.dart';
import 'package:smart_money/Pages/Home.dart';
import 'package:smart_money/Pages/Sigin.dart';
import 'package:smart_money/Widget/theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 49, top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitle(),
              _buildField(),
              _buildButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/Logo.png',
          width: 50,
          height: 50,
        ),
        const SizedBox(
          height: 79,
        ),
        Text(
          'Welcome back.\n In Smart money.',
          style: title,
        ),
        const SizedBox(
          height: 70,
        ),
      ],
    );
  }

  Widget _buildField() {
    return Column(
      children: [
        TextFormField(
          style: deskripsiwht,
          decoration: InputDecoration(
            fillColor: const Color(0xff262A34),
            filled: true,
            hintText: 'Masukan Email Anda',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          obscureText: true,
          style: deskripsiwht,
          decoration: InputDecoration(
            fillColor: const Color(0xff262A34),
            filled: true,
            hintText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: BorderSide.none,
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.visibility,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }

  Widget _buildButton( context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
          },
          child: Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
              color: border,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Align(
              child: Text(
                'Log in',
                style: buttonblack,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Text(
              'Belum punya akun?',
              style: deskripsiwht,
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SiginScreen()),
                );
              },
              child: Text('SIGN UP', style: deskripsiwht),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Column(
            children: [
              Text(
                'or with',
                style: deskripsiwht,
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  // Add action for social login
                },
                child: CircleAvatar(
                  child: Image.asset('assets/icon.png'),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
