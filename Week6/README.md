# **SILFI NAZARINA / TI-3G / 25**

# **PRAKTIKUM**

## **Praktikum 1 - Membangun Layout di Flutter**

### **Langkah 1: Buat project baru**

Buat project flutter baru dengan nama **layout_flutter**.

<img src="img/01.png">

### **Langkah 2: Ubah file lib/main.dart**

Ubah kode **lib/main.dart** sesuai praktikum kemudian isi nama dan NIM Anda di text title.

<img src="img/02.png">

### **Langkah 3: Identifikasi layout diagram**

- **Identifikasi baris dan kolom.**

    Pada kode diatas belum ada penggunaan row dan column.Saat ini hanya ada Center widget yang menampilkan teks 'Hello World' di tengah layar.

- **Apakah tata letaknya menyertakan kisi-kisi (grid)?**

    Tidak ada penggunaan widget GridView atau Grid di dalam kode.

- **Apakah ada elemen yang tumpang tindih?**

    Tidak ada elemen yang tumpang tindih dalam kode ini. 
    Semua elemen berada pada posisi default, dengan teks berada di tengah layar berkat penggunaan Center widget.

- **Apakah UI memerlukan tab?**

    Saat ini, dalam kode tersebut tidak ada tab yang digunakan. Dan menurut saya untuk output dengan widget itemm 'Hello World' saja 
    tidak terlalu perlu menggunakan tab, kecuali untuk fungsi lebih intens selanjutnya.

- **Perhatikan area yang memerlukan alignment, padding, atau borders.**

    area yang mungkin memerlukan alignment, padding, atau borders adalah teks 'Hello World'. Itu bisa diperbaiki sesuai dengan desain yang diinginkan, 
    apakah teks harus memiliki jarak dari tepi, border, atau diletakkan di tempat tertentu.

### **Langkah 4: Implementasi title row**

Membuat kolom bagian kiri pada judul. Tambahkan kode di bagian atas metode build() di dalam kelas MyApp dengan tambahan kode kode berikut:

1. Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

2. Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

3. Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection. Keseluruhan kode seperti berikut:

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildTitleSelection(){ 
  return Container(
  padding: const EdgeInsets.all(32), //tambah padding 32
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //menambahkan CrossAxisAlignment.start
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8), //tambah padding 8
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(color: Colors.grey), //ubah ke abu-abu
            ),
          ],
        ),
      ),
      /* soal 3*/
      Icon(
        Icons.star,   //tambah ikon star
        color: Colors.red,  //tambah warna merah
      ),
      const Text('41'),
    ],
  ),
);
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SILFI NAZARINA - 2241720054'),
        ),
        body: Column(
          children: [
            _buildTitleSelection(),
          ]
        ),
      ),
    );
  }
}
```
<img src="img/03.png">



