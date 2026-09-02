import 'package:flutter/material.dart';
import 'package:ministore/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: const Color(0xFFEDE3F5),
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFFD8C9A3), width: 2),
              ),
              child: Icon(product.icon, size: 80, color: const Color(0xFF7E57C2)),
            ),
            const SizedBox(height: 24),
            Text(
              product.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4A3B6B),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xFFF7F1E8),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xFFE3D9C6)),
              ),
              child: Text(
                product.category,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Color(0xFF9C8FB0)),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(color: Color(0xFFE3D9C6)),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFBF3),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFE3D9C6)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Price',
                    style: TextStyle(fontSize: 16, color: Color(0xFF9C8FB0)),
                  ),
                  Text(
                    '₱${product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7E57C2),
                    ),
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