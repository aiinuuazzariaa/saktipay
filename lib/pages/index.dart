import 'package:flutter/material.dart';
import 'package:saktipay/widgets/navbar.dart';

import 'package:saktipay/pages/account/account.dart';
import 'package:saktipay/pages/home/home.dart';
import 'package:saktipay/pages/product/product.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Home(),
    const Product(),
    const Center(child: Text('Transaksi')),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),

      bottomNavigationBar: Navbar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
