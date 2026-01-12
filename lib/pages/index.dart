import 'package:flutter/material.dart' hide SearchBar;
import 'package:saktipay/widgets/search_bar.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F8FA),
      body: SafeArea(
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
          ],
        ),
      ),
    );
  }
}
