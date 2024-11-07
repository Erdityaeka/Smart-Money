import 'package:flutter/material.dart';
import 'package:smart_money/Widget/theme.dart';

class DetailJenis extends StatelessWidget {
  // Menambahkan parameter jenis pada konstruktor
  final jenis;

  const DetailJenis({super.key, required this.jenis}); // Menyertakan required

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 49, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildJenisDetails(context),

            _buildTitle(context),
            _buildField(context),
            // Menampilkan gambar dan keterangan jenis
          ],
        ),
      ),
    );
  }

  // Membuat widget untuk menampilkan detail jenis
  Widget _buildJenisDetails(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 100,
        ),
        Image.asset(
          jenis.foto,
          width: 30,
          height: 30,
        ), // Menampilkan gambar jenis
        SizedBox(width: 10),
        Text(jenis.nama, style: deskripsiwht),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Buat Jenis',
            style: title,
          ),
        ],
      ),
    );
  }

  Widget _buildField(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          style: deskripsiwht,
          decoration: InputDecoration(
            fillColor: const Color(0xff262A34),
            filled: true,
            hintText: 'Masukan Jenis Anda',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(17),
                borderSide: BorderSide.none),
          ),
        ),
        const SizedBox(
          height: 100,
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
              ' Mulai Mengelola Keuangan',
              style: buttonblack,
            )),
          ),
        ),
      ],
    );
  }
}
