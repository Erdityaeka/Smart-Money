class Jenis {
  final String nama;
  final String keterangan;
  final String foto;

  Jenis ({required this.nama, required this.keterangan, required this.foto});
}
 final List<Jenis> Jenislist = [
  Jenis(nama: "Kebutuhan", keterangan: "Metode manajamen keuangan \nUntuk kebutuhan.", foto : 'assets/kebutuhan.png'),
  Jenis(nama: "Liburan", keterangan: "Metode manajamen keuangan \nUntuk liburan.", foto : 'assets/liburan.png'),
  Jenis(nama: "Gadget", keterangan: "Metode manajamen keuangan \nUntuk gadget.", foto : 'assets/Gadget.png'),
  Jenis(nama: "Penjualan", keterangan: "Metode manajamen keuangan\nUntuk penjualan.", foto : 'assets/penjualan.png'),
 ];
  