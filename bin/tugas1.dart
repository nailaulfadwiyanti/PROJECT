void main() {
  // Data karyawan
  String nama = "ulup";
  int jamKerja = 40;       // dalam seminggu
  double upahPerJam = 50000;
  bool statusTetap = true; // true = tetap, false = kontrak

  // Hitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Hitung pajak berdasarkan status
  double pajak;
  if (statusTetap) {
    pajak = gajiKotor * 0.10; // 10% jika tetap
  } else {
    pajak = gajiKotor * 0.05; // 5% jika kontrak
  }

  // Hitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Tampilkan hasil
  print("=== Data Gaji Karyawan ===");
  print("Nama Karyawan : $nama");
  print("Gaji Kotor    : Rp$gajiKotor");
  print("Pajak         : Rp$pajak");
  print("Gaji Bersih   : Rp$gajiBersih");
}