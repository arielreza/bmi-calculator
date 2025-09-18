// main.dart
import 'dart:io';

void main() {
  stdout.write("Masukkan berat badan (kg): ");
  double berat = double.parse(stdin.readLineSync()!);

  stdout.write("Masukkan tinggi badan (cm): ");
  double tinggiCm = double.parse(stdin.readLineSync()!);

  if (berat <= 0 || tinggiCm <= 0) {
    print("❌ Input tidak valid!");
    return;
  }

  double tinggiM = tinggiCm / 100;
  double bmi = berat / (tinggiM * tinggiM);

  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  print("✅ BMI Anda: ${bmi.toStringAsFixed(2)}");
  print("Kategori: $kategori");
}
