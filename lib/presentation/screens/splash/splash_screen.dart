import 'package:bitfolio/presentation/widgets/splash/splash_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SplashLogo(),
      ),
    );
  }
}