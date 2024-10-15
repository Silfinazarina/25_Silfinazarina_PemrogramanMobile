// home_page.dart
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/footer.dart';
import 'package:belanja/widgets/item_card.dart'; 
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', brand: 'Gulaku 1kg', price: 22000, img: 'assets/images/gulaku.jpeg', stock: 23, rating: 4.6),
    Item(name: 'Salt', brand: 'Cap Kapal 500g', price: 5500, img: 'assets/images/kapal.jpeg', stock: 16, rating: 4),
    Item(name: 'Sweet soy sauce', brand: 'Bango 135g', price: 12000, img: 'assets/images/bango.jpeg', stock: 20, rating: 3.8),
    Item(name: 'Cooking Oil', brand: 'Sunco 1L', price: 22000, img: 'assets/images/sunco.jpeg', stock: 9, rating: 4.3)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: GridView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return ItemCard(item: item); // Gunakan widget ItemCard
          },
        ),
      ),
      bottomNavigationBar: Footer(), // Menambahkan Footer di bawah
    );
  }
}
