import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_card.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      photo: 'https://cdn-icons-png.flaticon.com/512/1046/1046784.png',
      stock: 20,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      photo: 'https://cdn-icons-png.flaticon.com/512/1461/1461117.png',
      stock: 15,
      rating: 4.2,
    ),
    Item(
      name: 'Coffee',
      price: 10000,
      photo: 'https://cdn-icons-png.flaticon.com/512/924/924514.png',
      stock: 10,
      rating: 4.8,
    ),
    Item(
      name: 'Tea',
      price: 8000,
      photo: 'https://cdn-icons-png.flaticon.com/512/415/415733.png',
      stock: 25,
      rating: 4.6,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belanja Flutter'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // dua kolom
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return ItemCard(item: items[index]);
                },
              ),
            ),
          ),
          const Footer(
            nama: 'Mochamad Zacky',
            nim: '2341760147',
          ),
        ],
      ),
    );
  }
}
