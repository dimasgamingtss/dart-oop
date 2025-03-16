// Tugas Latihan 1 - Solutions
// Mobile Programming Course - Informatics Engineering UNISNU Jepara

// 1. Class Mobil dengan properti merk, model, dan tahun
class Mobil {
  String? merk;
  String? model;
  int? tahun;
  
  // Method untuk menampilkan informasi mobil
  void tampilkanInfo() {
    print("Informasi Mobil:");
    print("Merk: $merk");
    print("Model: $model");
    print("Tahun: $tahun");
  }
}

// 2. Class Mahasiswa dengan properti nama dan nim dengan nilai default
class Mahasiswa {
  // Properti dengan nilai default
  String nama = "Student";
  String nim = "000000";
  
  void tampilkanInfo() {
    print("\nInformasi Mahasiswa:");
    print("Nama: $nama");
    print("NIM: $nim");
  }
}

// 3. Class Buku dengan parameterized constructor
class Buku {
  String judul;
  String pengarang;
  
  // Parameterized constructor
  Buku(this.judul, this.pengarang);
  
  void tampilkanInfo() {
    print("\nInformasi Buku:");
    print("Judul: $judul");
    print("Pengarang: $pengarang");
  }
}

// 4. Class Segitiga dengan named constructor
class Segitiga {
  double alas;
  double tinggi;
  String jenis;
  
  // Parameterized constructor
  Segitiga(this.alas, this.tinggi, this.jenis);
  
  // Named constructor untuk segitiga siku-siku
  Segitiga.sikuSiku() : alas = 3.0, tinggi = 4.0, jenis = "Siku-siku";
  
  // Named constructor untuk segitiga sama sisi
  Segitiga.samaSisi() : alas = 5.0, tinggi = 4.3, jenis = "Sama sisi";
  
  // Named constructor untuk segitiga sama kaki
  Segitiga.samaKaki() : alas = 4.0, tinggi = 5.0, jenis = "Sama kaki";
  
  void tampilkanInfo() {
    print("\nInformasi Segitiga:");
    print("Jenis: $jenis");
    print("Alas: $alas");
    print("Tinggi: $tinggi");
    print("Luas: ${0.5 * alas * tinggi}");
  }
}

// 5. Class Warna dengan constant constructor
class Warna {
  final int red;
  final int green;
  final int blue;
  
  // Constant constructor
  const Warna(this.red, this.green, this.blue);
  
  // Named constant constructor untuk warna dasar
  const Warna.merah() : red = 255, green = 0, blue = 0;
  const Warna.hijau() : red = 0, green = 255, blue = 0;
  const Warna.biru() : red = 0, green = 0, blue = 255;
  
  void tampilkanInfo() {
    print("\nInformasi Warna:");
    print("RGB: ($red, $green, $blue)");
    String hexCode = '#${red.toRadixString(16).padLeft(2, '0')}${green.toRadixString(16).padLeft(2, '0')}${blue.toRadixString(16).padLeft(2, '0')}';
    print("Hex: $hexCode");
  }
}

void main() {
  // 1. Membuat objek dari class Mobil
  Mobil mobilSaya = Mobil();
  mobilSaya.merk = "Toyota";
  mobilSaya.model = "Avanza";
  mobilSaya.tahun = 2022;
  mobilSaya.tampilkanInfo();
  
  // 2. Membuat objek dari class Mahasiswa dengan nilai default
  Mahasiswa mhs = Mahasiswa();
  mhs.tampilkanInfo();
  
  // 3. Membuat objek dari class Buku dengan parameterized constructor
  Buku bukuSaya = Buku("Pemrograman Dart", "Akhmad Khanif Zyen");
  bukuSaya.tampilkanInfo();
  
  // 4. Membuat objek dari class Segitiga dengan named constructor
  Segitiga segitiga1 = Segitiga.sikuSiku();
  segitiga1.tampilkanInfo();
  
  Segitiga segitiga2 = Segitiga.samaSisi();
  segitiga2.tampilkanInfo();
  
  // 5. Membuat objek dari class Warna dengan constant constructor
  const Warna warna1 = Warna(255, 128, 0); // Orange
  warna1.tampilkanInfo();
  
  const Warna warna2 = Warna.merah();
  warna2.tampilkanInfo();
  
  const Warna warna3 = Warna.hijau();
  warna3.tampilkanInfo();
  
  // Verifikasi kesamaan objek constant
  print("\nPerbandingan Objek Constant:");
  const Warna merah1 = Warna.merah();
  const Warna merah2 = Warna.merah();
  print("Hash code merah1: ${merah1.hashCode}");
  print("Hash code merah2: ${merah2.hashCode}");
  print("Apakah identik? ${identical(merah1, merah2)}");
}