import 'package:flutter/material.dart' hide SearchBar;

import 'package:saktipay/models/product/data.dart';

import 'package:saktipay/widgets/search_bar.dart';
import 'package:saktipay/widgets/product/grid.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F8FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Produk',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    Image.asset('assets/img/logo_main.png', height: 24),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const SearchBar(),

              const SizedBox(height: 20),

              ProductGrid(products: dummyProducts),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
