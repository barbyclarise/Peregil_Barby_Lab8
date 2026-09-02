import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F1E8),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 160,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF7E57C2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
              Positioned(
                bottom: -40,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF7F1E8),
                  ),
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0xFFEDE3F5),
                    child: Icon(Icons.person, size: 40, color: Color(0xFF7E57C2)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 48),
          const Text(
            'Barby Peregil',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF4A3B6B),
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Shopper  ·  Iloilo, Philippines',
            style: TextStyle(fontSize: 13, color: Color(0xFF9C8FB0)),
          ),
          const SizedBox(height: 28),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFFBF3),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: const Color(0xFFE3D9C6)),
              ),
              child: Column(
                children: [
                  _buildProfileRow(Icons.shopping_bag_outlined, 'My Orders'),
                  const Divider(height: 1, color: Color(0xFFE3D9C6)),
                  _buildProfileRow(Icons.favorite_border, 'Wishlist'),
                  const Divider(height: 1, color: Color(0xFFE3D9C6)),
                  _buildProfileRow(Icons.shopping_cart_outlined, 'My Cart'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileRow(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF7E57C2), size: 22),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF4A3B6B),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Icon(Icons.chevron_right, color: Color(0xFF9C8FB0), size: 20),
        ],
      ),
    );
  }
}