import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo_brand.png',
              width: 136,
              height: 136,
            ),
            const SizedBox(
              height: 60,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Color(0xFF46BB1B),
              ),
              strokeWidth: 6,
            ),
          ],
        ),
      ),
    );
  }
}
