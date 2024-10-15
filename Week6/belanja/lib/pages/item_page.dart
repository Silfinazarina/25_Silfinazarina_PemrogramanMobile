import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_details.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
final Item item;

  const ItemPage({required this.item});

  @override
  Widget build(BuildContext context) {
    // final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
        backgroundColor: Colors.lightBlue,
        automaticallyImplyLeading: true, // Menampilkan tanda panah kembali
      ),
      body: ItemDetails(item: item), // Gunakan widget ItemDetails
    );
  }
}
