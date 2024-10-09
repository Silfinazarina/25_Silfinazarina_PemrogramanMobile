import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget _buildTitleSelection(){ 
  return Container(
  padding: const EdgeInsets.all(32), 
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8), 
              child: const Text(
                'Museum Angkut',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(color: Colors.grey), 
            ),
          ],
        ),
      ),
      /* soal 3*/
      Icon(
        Icons.star,   
        color: Colors.red,  
      ),
      const Text('41'),
    ],
  ),
);
}

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Museum Angkut merupakan museum transportasi dan tempat wisata modern yang terletak di Kota Batu, Jawa Timur, sekitar 20 km dari Kota Malang.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SILFI NAZARINA - 2241720054'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/museum_angkut.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            _buildTitleSelection(),
            buttonSection,
            textSection,     
          ]
        ),
      ),
    );
  }


  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}