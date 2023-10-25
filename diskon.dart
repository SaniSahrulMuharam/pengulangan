import "dart:io";

void main() {
  stdout.write('masukan nama Pelanggan:');
  String namaPelanggan = (stdin.readLineSync()!);

  stdout.write('masukan nama barang:');
  String namaBarang = (stdin.readLineSync()!);

  stdout.write('masukan jumlah barang:');
  int jumlah = int.parse(stdin.readLineSync()!);

  stdout.write('masukan harga barang: Rp');
  double harga = double.parse(stdin.readLineSync()!);

  double totalpembayaran = jumlah * harga;
  double potongan = 0;

  if (totalpembayaran > 500000) {
    potongan = totalpembayaran * 0.2;
  } else if (totalpembayaran > 250000) {
    potongan = totalpembayaran * 0.15;
  } else if (totalpembayaran > 100000) {
    potongan = totalpembayaran * 0.02;
  }

  double totalsetelahpotongan = totalpembayaran - potongan;

  stdout.write('masukan jumlah uang tunai: Rp');
  int uangtunai = int.parse(stdin.readLineSync()!);

  if (uangtunai < totalpembayaran) {
    print('uang tunai kurang. pembayaran tidak dapat diproses.');

  } 
  var kembalian = uangtunai - totalpembayaran;


  print('\n===== Struk Pembayaran =====');
  print('Pelanggan: $namaPelanggan');
  print('barang: $namaBarang');
  print('jumlah: $jumlah pcs');
  print('harga per pcs: Rp $harga');
  print('total sebelum potongan: Rp $totalpembayaran');
  print('kembalian: Rp $kembalian');
  print('potongan: Rp $potongan');
  print('total setelah potongan: Rp $totalsetelahpotongan');
  print('==============');
}
