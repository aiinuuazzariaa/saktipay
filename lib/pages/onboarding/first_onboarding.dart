import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saktipay/pages/onboarding/second_onboarding.dart';

class FirstOnBoarding extends StatelessWidget {
  const FirstOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),

            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SecondOnBoarding(),
                      ),
                    );
                  },
                  child: Text(
                    'Lewati',
                    style: TextStyle(fontSize: 18, color: Color(0xFFA4A4A4)),
                  ),
                ),
              ),
            ),

            const Spacer(),

            SvgPicture.asset(
              'assets/img/undraw_report.svg',
              width: 300,
              height: 200,
            ),

            const SizedBox(height: 86),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Text(
                'Gak Perlu Ribet Rekap Data',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                'Pantau penjualanmu dengan cepat dan mudah.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.75),
                ),
              ),
            ),

            const Spacer(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const SecondOnBoarding(),
                      ),
                    );
                  },
                  child: const Text(
                    'Lanjut',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
