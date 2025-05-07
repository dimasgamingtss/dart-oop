import 'dart:io';

void main() {
  // 1. Tipe Data

  // String
  String dataString = 'Hello Pemrograman Mobile';
  print(dataString);

  // Num
  num dataNum = 20;
  print(dataNum);

  // Integer
  int myInteger = 10;
  print(myInteger);

  // Double
  double myDouble = 0.1;
  print(myDouble);

  // Boolean
  bool dataBool = true;
  print(dataBool);

  // List
  List<dynamic> dataList = [1, 2, 3, 'a', 'b', 'c'];
  print(dataList);

  // Map
  Map<String, dynamic> dataMap = {
    'url': 'https://unisnu.ac.id/',
    'topic': 'Flutter Engineering',
  };
  print(dataMap);

  // Dynamic
  dynamic a = 12.2;
  a = 'Hello Khanif!';
  print(a);

  // Var
  var penulis = 'Sayuti';
  print(penulis);

  // 2. Variabel
  var umur = 18;
  dynamic nama = 'Khanif';
  String kota = 'Jepara';

  // 3. Operator

  // Operator Aritmatika
  int c = 6;
  c = c + 6; // c = 12
  print("Hasil penjumlahan: $c");

  // Operator Relasional
  if (kota == 'Jepara') print('Kota adalah Jepara');

  // Operator Logika
  var A = true;
  var B = false;
  var expr = A && B; // false
  print("Hasil AND: $expr");

  // Menerima Input dari Pengguna
  print("Masukkan nama:");
  String? inputNama = stdin.readLineSync();
  print("Nama anda adalah ${inputNama}");

  // Percabangan dan Perulangan

  // If-Else Condition
  var testList = [2, 4, 8, 16, 32];
  if (testList.isNotEmpty) {
    print('Tulisan ini akan tampil jika kondisi bernilai true');
    testList.clear();
  }

  // Switch-Case
  int posSaatIni = 10;
  switch (posSaatIni) {
    case 1:
      print("Makan Snack");
      break;
    case 2:
      print("Makan Daging");
      break;
    case 3:
      print("Makan Sayur");
      break;
    case 4:
      print("Berbahagia");
      break;
    default:
      print("Pos yang anda masukkan tidak terdaftar");
  }

  // Perulangan For
  for (var i = 1; i <= 10; i++) {
    print("Number $i");
  }

  // Perulangan While
  int j = 1;
  while (j <= 10) {
    print("nilai while: $j");
    j++;
  }

  // Perulangan Do-While
  int k = 1;
  do {
    print("nilai do while: $k");
    k++;
  } while (k <= 10);

  // Perulangan For-In
  List<String> listNama = ['agus', 'budi', 'cahyo'];
  for (String nama in listNama) {
    print(nama);
  }

  // OOP Concepts in Dart: Class and Object

  // Class in Dart
  class Mobil {
    String? merk;
    String? model;
    int? tahun;

    void klakson() {
      print("Beep! Beep!");
    }
  }

  // Creating Object from Class
  void main() {
    Mobil mobil1 = Mobil();

    mobil1.merk = "Toyota";
    mobil1.model = "Corolla";
    mobil1.tahun = 2020;

    print(mobil1.merk); // Output: Toyota
    print(mobil1.model); // Output: Corolla
    print(mobil1.tahun); // Output: 2020

    mobil1.klakson(); // Output: Beep! Beep!
  }

  // Constructor in Dart
  class Mobil {
    String? merk;
    String? model;
    int? tahun;

    Mobil(String merk, String model, int tahun) {
      this.merk = merk;
      this.model = model;
      this.tahun = tahun;
    }

    void klakson() {
      print("Beep! Bepp!");
    }
  }

  // Creating Object using Constructor
  void main() {
    Mobil mobil2 = Mobil("Honda", "Civic", 2019);

    print(mobil2.merk); // Output: Honda
    print(mobil2.model); // Output: Civic
    print(mobil2.tahun); // Output: 2019
  }

  // Class Example - Hewan
  class Hewan {
    String? nama;
    int? jumlahKaki;
    int? umur;

    void display() {
      print("Nama Hewan: $nama");
      print("Jumlah Kaki: $jumlahKaki");
      print("Umur: $umur");
    }
  }

  void main() {
    Hewan hewan = Hewan();
    hewan.nama = "Singa";
    hewan.jumlahKaki = 4;
    hewan.umur = 10;
    hewan.display();
  }

  // Class PersegiPanjang - Calculate Area
  class PersegiPanjang {
    double? panjang;
    double? lebar;

    double area() {
      return panjang! * lebar!;
    }
  }

  void main() {
    PersegiPanjang persegiPanjang = PersegiPanjang();
    persegiPanjang.panjang = 10;
    persegiPanjang.lebar = 5;
    print("Luas Persegi Panjang adalah ${persegiPanjang.area()}.");
  }

  // Class BungaSederhana - Calculate Simple Interest
  class BungaSederhana {
    double? pokok;
    double? sukuBunga;
    double? waktu;

    double bunga() {
      return (pokok! * sukuBunga! * waktu!) / 100;
    }
  }

  void main() {
    BungaSederhana bungaSederhana = BungaSederhana();
    bungaSederhana.pokok = 1000;
    bungaSederhana.sukuBunga = 10;
    bungaSederhana.waktu = 2;
    print("Bunga Sederhana adalah ${bungaSederhana.bunga()}.");
  }

  // Constructor Example
  class Siswa {
    String? nama;
    int? umur;
    int? nomorInduk;

    Siswa(String nama, int umur, int nomorInduk) {
      this.nama = nama;
      this.umur = umur;
      this.nomorInduk = nomorInduk;
    }
  }

  void main() {
    Siswa siswa = Siswa("Budi", 30, 1);
    print("Nama: ${siswa.nama}");
    print("Umur: ${siswa.umur}");
    print("Nomor Induk: ${siswa.nomorInduk}");
  }

  // Inheritance Example
  class Orang {
    String? nama;
    int? umur;

    void tampil() {
      print("Nama: $nama");
      print("Umur: $umur");
    }
  }

  class Murid extends Orang {
    String? namaSekolah;
    String? alamatSekolah;

    void tampilInfoSekolah() {
      print("Nama Sekolah: $namaSekolah");
      print("Alamat Sekolah: $alamatSekolah");
    }
  }

  void main() {
    var murid = Murid();
    murid.nama = "Joko";
    murid.umur = 16;
    murid.namaSekolah = "SMA N 1";
    murid.alamatSekolah = "Jepara";
    murid.tampil();
    murid.tampilInfoSekolah();
  }

  // Polymorphism Example
  class Binatang {
    void makan() {
      print("Binatang sedang makan");
    }
  }

  class Kucing extends Binatang {
    @override
    void makan() {
      print("Kucing sedang makan");
    }
  }

  void main() {
    Binatang binatang = Binatang();
    binatang.makan();

    Kucing kucing = Kucing();
    kucing.makan();
  }

  // Abstract Example
  abstract class Kendaraan {
    void jalankan();
    void berhenti();
  }

  class Mobil extends Kendaraan {
    @override
    void jalankan() {
      print('Mobil mulai bergerak.');
    }

    @override
    void berhenti() {
      print('Mobil berhenti.');
    }
  }

  void main() {
    Kendaraan mobil = Mobil();
    mobil.jalankan();
    mobil.berhenti();
  }

  // Encapsulation Example
  class Employee {
    int? _id;
    String? _name;

    int getId() {
      return _id!;
    }

    String getName() {
      return _name!;
    }

    void setId(int id) {
      this._id = id;
    }

    void setName(String name) {
      this._name = name;
    }
  }

  void main() {
    Employee employee = Employee();
    employee.setId(1);
    employee.setName("John");

    print("Id: ${employee.getId()}");
    print("Name: ${employee.getName()}");
  }
}
