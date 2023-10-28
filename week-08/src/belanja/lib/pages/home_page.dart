import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/bottom_widget.dart';
import 'package:belanja/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Sugar',
        price: 5000,
        imageUrl: 'assets/sugar.jpg',
        stok: 10,
        rating: 4.3),
    Item(
        name: 'Salt',
        price: 2000,
        imageUrl: 'assets/salt.jpg',
        stok: 31,
        rating: 4.5),
    Item(
        name: 'Coffee',
        price: 17000,
        imageUrl: 'assets/coffee.jpg',
        stok: 13,
        rating: 4.1),
    Item(
        name: 'Black Pepper',
        price: 13000,
        imageUrl: 'assets/pepper.jpg',
        stok: 54,
        rating: 4.7),
    Item(
        name: 'Coriander Seed',
        price: 16500,
        imageUrl: 'assets/coriander.jpg',
        stok: 26,
        rating: 4.6),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shopping List'),
        ),
        body: CardWidget(items: items),
        bottomNavigationBar: const BottomWidget());
  }
}
