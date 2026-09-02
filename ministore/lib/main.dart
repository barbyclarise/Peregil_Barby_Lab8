import 'package:flutter/material.dart';
import 'package:ministore/main_screen.dart';

void main() => runApp(const BarBeeMart());

class BarBeeMart extends StatelessWidget {
  const BarBeeMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BarBee Mart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F1E8),
        primaryColor: const Color(0xFF7E57C2),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7E57C2),
          primary: const Color(0xFF7E57C2),
          secondary: const Color(0xFFD8C9A3),
          surface: const Color(0xFFF7F1E8),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF7E57C2),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: Color(0xFF7E57C2),
          textColor: Color(0xFF4A3B6B),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFFFFFBF3),
          selectedItemColor: Color(0xFF7E57C2),
          unselectedItemColor: Color(0xFFB7AFC7),
          type: BottomNavigationBarType.fixed,
          elevation: 8,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xFF4A3B6B)),
          bodyLarge: TextStyle(color: Color(0xFF4A3B6B)),
        ),
      ),
      home: MainScreen(),
    );
  }
}