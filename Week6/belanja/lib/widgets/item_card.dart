import 'package:belanja/main.dart';
import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ItemCard extends StatelessWidget {
  final Item item;

  ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //penggunaan go_route
      onTap: () {
        context.go('/item', extra: item);
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Hero(
                tag: item.name,
                child: Image.asset(
                  item.img,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.brand,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text('Price: Rp.${item.price}'),
                  Text('Stock: ${item.stock}'),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text('${item.rating}'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
