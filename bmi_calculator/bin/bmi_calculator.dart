// main.dart
import 'dart:io';

void main() {
  stdout.write("Masukkan berat badan (kg): ");
  String? beratInput = stdin.readLineSync();
  double? berat = double.tryParse(beratInput ?? "");

  stdout.write("Masukkan tinggi badan (cm): ");
  String? tinggiInput = stdin.readLineSync();
  double? tinggi = double.tryParse(tinggiInput ?? "");

  if (berat == null || tinggi == null || berat <= 0 || tinggi <= 0) {
    print("❌ Input tidak valid! Berat dan tinggi harus berupa angka positif.");
    return;
  }

  print("✅ Input valid. Berat: $berat kg, Tinggi: $tinggi cm");
}
