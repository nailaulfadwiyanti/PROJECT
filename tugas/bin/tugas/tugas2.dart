import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write('Masukkan skor Anda (0 - 100): ');
  String? input = stdin.readLineSync();

  // Validasi input kosong
  if (input == null || input.isEmpty) {
    print('Error: Input tidak boleh kosong.');
    return;
  }

  // Konversi input ke tipe double
  double? skor = double.tryParse(input);

  // Validasi apakah input berupa angka dan dalam rentang 0-100
  if (skor == null || skor < 0 || skor > 100) {
    print('Error: Skor harus berupa angka antara 0 sampai 100.');
    return;
  }

  // Menentukan grade berdasarkan skor
  String grade;

  if (skor >= 85) {
    grade = 'A';
  } else if (skor >= 70) {
    grade = 'B';
  } else if (skor >= 60) {
    grade = 'C';
  } else if (skor >= 50) {
    grade = 'D';
  } else {
    grade = 'E';
  }

  // Menampilkan hasil akhir
  print('\nSkor Anda: $skor');
  print('Grade Anda: $grade');
}