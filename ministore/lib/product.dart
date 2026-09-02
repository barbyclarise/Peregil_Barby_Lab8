import 'package:flutter/material.dart';

class Product {
  final String name;
  final String category;
  final double price;
  final IconData icon;

  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.icon,
  });
}

const List<Product> allProducts = [
  Product(
    name: 'Wireless Mouse',
    category: 'Electronics',
    price: 599.00,
    icon: Icons.mouse,
  ),
  Product(
    name: 'Bluetooth Speaker',
    category: 'Electronics',
    price: 1299.00,
    icon: Icons.speaker,
  ),
  Product(
    name: 'Running Shoes',
    category: 'Sportswear',
    price: 1899.00,
    icon: Icons.directions_run,
  ), 
  Product(
    name: 'Yoga Mat',
    category: 'Sportswear',
    price: 450.00,
    icon: Icons.fitness_center,
  ),
  Product(
    name: 'Notebook Set',
    category: 'Stationery',
    price: 120.00,
    icon: Icons.book,
  ),
  Product(
    name: 'Gel Pens (Set of 10)',
    category: 'Stationery',
    price: 599.00,
    icon: Icons.edit,
  ),
  Product(
    name: 'Paint Brushes (Set of 5)',
    category: 'Art Supplies',
    price: 812.00,
    icon: Icons.brush,
  ),
  Product(
    name: 'Acrylic Paint Set',
    category: 'Art Supplies',
    price: 1499.00,
    icon: Icons.palette,
  ),
  Product(
    name: 'Purple Hoodie',
    category: 'Clothing',
    price: 1299.00,
    icon: Icons.checkroom_rounded,
  ),
  Product(
    name: 'Sanrio T-shirt',
    category: 'Clothing',
    price: 699.00,
    icon: Icons.checkroom_rounded,
  ),
  Product(
    name: 'Acuostic Guitar',
    category: 'Instruments',
    price: 6899.00,
    icon: Icons.music_note,
  ),
  Product(
    name: 'Keybaord (Piano)',
    category: 'Instruments',
    price: 14999.00,
    icon: Icons.piano,
  ),
];