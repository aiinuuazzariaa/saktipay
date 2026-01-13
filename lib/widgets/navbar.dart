import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Navbar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const Navbar({super.key, required this.currentIndex, required this.onTap});

  Color _color(int index) {
    return currentIndex == index ? const Color(0xFFF9B42A) : Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,

      selectedItemColor: const Color(0xFFF9B42A),
      unselectedItemColor: Colors.grey,

      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),

      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/house.svg',
            width: 22,
            color: _color(0),
          ),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/grid-2x2-plus.svg',
            width: 22,
            color: _color(1),
          ),
          label: 'Produk',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/wallet-minimal.svg',
            width: 22,
            color: _color(2),
          ),
          label: 'Transaksi',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/circle-user-round.svg',
            width: 22,
            color: _color(3),
          ),
          label: 'Akun',
        ),
      ],
    );
  }
}
