import 'package:flutter/material.dart';
import 'package:ministore/product.dart';

class CategoryScreen extends StatelessWidget{
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = allProducts.map((p) => p.category).toSet().toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),


        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return Card(
            elevation: 3,
            child: Center(
              child: Center(
                child: Text(
                  category,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      ),
    );
}
}