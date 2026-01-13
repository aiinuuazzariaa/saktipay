import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:saktipay/pages/account/profile.dart';
import 'package:saktipay/pages/auth/login.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Akun',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Image.asset('assets/img/logo_main.png', height: 24),
                ],
              ),

              const SizedBox(height: 40),

              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xFFD2D5DA),
                    child: const Text(
                      'A',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Ainu Azzaria',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'ainu.azzaria@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 30),

              _menuItem(
                icon: 'assets/icons/user-round.svg',
                title: 'Profil',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Profile()),
                  );
                },
              ),
              _menuItem(
                icon: 'assets/icons/key-round.svg',
                title: 'Kata Sandi',
                onTap: () {},
              ),
              _menuItem(
                icon: 'assets/icons/paintbrush.svg',
                title: 'Tema',
                onTap: () {},
              ),
              _menuItem(
                icon: 'assets/icons/info.svg',
                title: 'Tentang Aplikasi',
                onTap: () {},
              ),
              _menuItem(
                icon: 'assets/icons/log-out.svg',
                title: 'Keluar',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Login()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menuItem({
    required String icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          decoration: BoxDecoration(
            color: const Color(0xFFF9B42A),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SvgPicture.asset(icon, width: 20, color: Colors.white),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const Icon(Icons.chevron_right, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
