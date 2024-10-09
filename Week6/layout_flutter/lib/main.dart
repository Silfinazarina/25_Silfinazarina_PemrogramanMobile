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