import 'package:flutter/material.dart' hide SearchBar;
import 'package:saktipay/models/product/data.dart';
import 'package:saktipay/widgets/bottom_bar.dart';
import 'package:saktipay/widgets/search_bar.dart';
import 'package:saktipay/widgets/product/grid.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _currentIndex = 0;

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
                        text: 'Hai, ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: 'Ainu',
                            style: TextStyle(color: Color(0xFFF9B42A)),
                          ),
                        ],
                      ),
                    ),

                    Image.asset('assets/img/logo_main.png', height: 24),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const SearchBar(),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/img/banner.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              ProductGrid(products: dummyProducts),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentProduct: 0,
      ),
    );
  }
}
