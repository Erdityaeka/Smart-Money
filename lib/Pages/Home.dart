import 'package:flutter/material.dart';
import 'package:smart_money/List%20Jenis/list.dart';
import 'package:smart_money/Pages/Isijenis.dart';
import 'package:smart_money/Widget/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Menyimpan jenis yang dipilih
  String selectedJenis = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 32, top: 40),
        child: Column(
          children: [
            _buildHeader(context),
            _buildBody(context),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60.0),
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            'assets/Logo.png',
            width: 50,
            height: 50,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Icon(
              Icons.notifications,
              color: white,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: white, width: 1)),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      decoration: BoxDecoration(
        color: container,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: border),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Income', style: deskripsigrey),
            const SizedBox(height: 5),
            Text('Rp.0', style: deskripsgreen),
            const SizedBox(height: 12),
            Text('Exponse', style: deskripsigrey),
            const SizedBox(height: 5),
            Text('Rp.0', style: deskripsiredd),
            const SizedBox(height: 12),
            Text('Total', style: deskripsigrey),
            const SizedBox(height: 5),
            Text('Rp.0', style: deskripsgreyy),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Row(
              children: [
                Text('Financial Summary', style: titledes),
                const Spacer(),
                GestureDetector(
                  onTap: () => _showBottomSheet(context),
                  child: Text('Tambah Baru', style: deskripsiylw),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                itemCount: 1, // Sesuaikan jumlah item di sini
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      height: 270,
                      decoration: BoxDecoration(
                        color: container,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: border),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                    'assets/liburan.png'), // Sesuaikan dengan gambar yang sesuai
                                const SizedBox(width: 2),
                                Text(
                                  'Liburan jepang',
                                  style: titledes,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Income', style: deskripsig10),
                            const SizedBox(height: 5),
                            Text('Rp.0', style: deskripsgr10),
                            const SizedBox(height: 12),
                            Text('Exponse', style: deskripsig10),
                            const SizedBox(height: 5),
                            Text('Rp.0', style: deskripsir10),
                            const SizedBox(height: 12),
                            Text('Total', style: deskripsig10),
                            const SizedBox(height: 5),
                            Text('Rp.0', style: deskripsigt10),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 113,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      color: border,
                                      borderRadius: BorderRadius.circular(17)),
                                  child: Align(
                                    child: Text(
                                      'Update',
                                      style: titleblak,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: 541, // Set your desired height
          color: const Color(0xff2E3138),
          child: Padding(
            padding: const EdgeInsets.only(right: 40, top: 60, left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pilih Jenis', style: titledes),
                const SizedBox(height: 20), // Tambahkan sedikit jarak
                Expanded(
                  child: ListView.builder(
                    itemCount: Jenislist
                        .length, // Menggunakan Jenislist yang sudah dibuat
                    itemBuilder: (context, index) {
                      final jenisItem = Jenislist[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Container(
                          width: double.infinity,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 6, right: 11),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    jenisItem.foto,
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(jenisItem.nama, style: titleblak),
                                    const SizedBox(height: 1),
                                    Text(jenisItem.keterangan,
                                        style: titlegrey),
                                  ],
                                ),
                                const SizedBox(width: 30),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailJenis(
                                            jenis: Jenislist[
                                                index]), // Mengirim jenis yang dipilih
                                      ),
                                    );
                                  },
                                  child: Icon(Icons.arrow_right,
                                      color: black, size: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
