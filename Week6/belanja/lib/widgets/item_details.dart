import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final Item item;

  ItemDetails({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Hero(
            tag: item.name,
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(height: 10), // Jarak antara gambar dan informasi
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    item.brand,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8), // Jarak 
                  Text(
                    '${item.name}',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Price: Rp.${item.price}',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'Stock: ${item.stock}',
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text('${item.rating}', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
