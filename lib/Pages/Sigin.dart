import 'package:flutter/material.dart';
import 'package:smart_money/Pages/Home.dart';
import 'package:smart_money/Widget/theme.dart';

class SiginScreen extends StatelessWidget {
  const SiginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 49, top: 60),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          _buildTitle(context),
          _buildField(context),
        ]),
      ),
    );
  }
}

Widget _buildTitle(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      const SizedBox(
        height: 25,
      ),
      Text(
        'Create  New\nAccount',
        style: title,
      ),
    ],
  );
}

Widget _buildField(context) {
  return Column(
    children: [
       const SizedBox(
              height: 70,
            ),
            TextFormField(
              style: deskripsiwht,
              decoration: InputDecoration(
                fillColor: const Color(0xff262A34),
                filled: true,
                hintText: 'Masukan Nama Anda',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              style: deskripsiwht,
              decoration: InputDecoration(
                fillColor: const Color(0xff262A34),
                filled: true,
                hintText: 'Masukan Email Anda',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none),
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
                      borderSide: BorderSide.none),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ))),
            ),
            const SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: border,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Align(
                    child: Text(
                  ' Sign In',
                  style: buttonblack,
                )),
              ),
            ),
           
          
    ],
  );
}
