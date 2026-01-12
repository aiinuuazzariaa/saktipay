import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9B42A),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Image.asset(
            'assets/img/logo_white.png',
            width: 250,
            height: 100,
          ),
        ),
      ),
    );
  }
}
