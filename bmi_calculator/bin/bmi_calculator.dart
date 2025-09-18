// main.dart
import 'dart:io';

void main() {
  List<Map<String, dynamic>> riwayat = [];

  while (true) {
    stdout.write("Masukkan berat badan (kg) atau ketik 'exit' untuk keluar: ");
    String? beratInput = stdin.readLineSync();
    if (beratInput == "exit") break;
    double? berat = double.tryParse(beratInput ?? "");

    stdout.write("Masukkan tinggi badan (cm): ");
    String? tinggiInput = stdin.readLineSync();
    double? tinggiCm = double.tryParse(tinggiInput ?? "");

    if (berat == null || tinggiCm == null || berat <= 0 || tinggiCm <= 0) {
      print("❌ Input tidak valid! Coba lagi.\n");
      continue;
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

    String hasil =
        "Tinggi: $tinggiCm cm, Berat: $berat kg, BMI: ${bmi.toStringAsFixed(2)} ($kategori)";
    print("✅ $hasil\n");

    // Simpan ke riwayat
    riwayat.add({
      'tinggi': tinggiCm,
      'berat': berat,
      'bmi': bmi,
      'kategori': kategori,
    });
  }

  // Tampilkan riwayat
  print("\n📌 Riwayat Perhitungan BMI:");
  for (var data in riwayat) {
    print(
      "Tinggi: ${data['tinggi']} cm, "
      "Berat: ${data['berat']} kg, "
      "BMI: ${data['bmi'].toStringAsFixed(2)}, "
      "Kategori: ${data['kategori']}",
    );
  }
}
