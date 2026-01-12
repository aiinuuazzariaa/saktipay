import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: const Color(0xFFF9B42A),
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
        BottomNavigationBarItem(icon: Icon(Icons.inventory), label: 'Produk'),
        BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Transaksi'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
      ],
    );
  }
}
