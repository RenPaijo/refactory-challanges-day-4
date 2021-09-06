import 'dart:io';
import 'dart:convert';
import 'dart:math';

void main(List<String> arguments) {
  leaptahun();
  arayToObject();
  playJSON();
  itemNumber();
}

void leaptahun() {
  print("Menentukan Tahun Kabisat");
  stdout.write("Tuliskan tahunnya: ");
  int tahun = int.tryParse(stdin.readLineSync());

  if (tahun % 4 == 0) {
    if (tahun % 100 == 0) {
      if (tahun % 400 == 0) {
        print(" $tahun, merupakan tahun kabisat");
      } else {
        print(" $tahun, bukan merupakan tahun kabisat");
      }
    } else {
      print(" $tahun, merupakan tahun kabisat");
    }
  } else {
    print(" $tahun, bukan merupakan tahun kabisat");
  }
}

void arayToObject() {
  List<int> number = [1, 2, 3, 4, 5];
  print(number);

  List<String> kalimat = ['halo', 'hai'];
  print(kalimat);
}

void playJSON() {
  final JsonString = '{"j": 99, "t": "x"}';
  final cetak = json.decode(JsonString);
  print(cetak);
}

void itemNumber() {
  int i, m = 0, flag = 0;

  stdout.write("Masukkan Bilangan: ");
  int angka = int.tryParse(stdin.readLineSync());

  if (angka % 2 == 0) {
    print("$angka merupakan bilangan genap");
  } else{
    print("$angka merupakan bilangan ganjil");
  }
  int angka2 = angka * 5;
  m = angka2 ~/ 2;
  for (i = 2; i <= m; i++) {
    if (angka2 % i == 0) {
      print('$angka2 bukan merupakan bilangan prima');
      flag = 1;
      break;
    }
  }
  if (flag == 0) {
    print('$angka2 merupakan bilangan prima');
  }
}
