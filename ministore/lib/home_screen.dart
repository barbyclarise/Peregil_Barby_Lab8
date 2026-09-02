import 'package:flutter/material.dart';
import 'package:ministore/product.dart';
import 'package:ministore/product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BarBee Mart')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: allProducts.length,
        itemBuilder: (context, index) {
          final product = allProducts[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6),
            elevation: 2,
            color: const Color(0xFFFFFBF3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: const BorderSide(color: Color(0xFFE3D9C6)),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: const Color(0xFFEDE3F5),
                child: Icon(product.icon, color: const Color(0xFF7E57C2)),
              ),
              title: Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF4A3B6B),
                ),
              ),
              subtitle: Text(
                product.category,
                style: const TextStyle(color: Color(0xFF9C8FB0)),
              ),
              trailing: Text(
                '₱${product.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF7E57C2),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(product: product)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}