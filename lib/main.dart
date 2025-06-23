import 'package:bitfolio/core/configs/themes/app_theme.dart';
import 'package:bitfolio/presentation/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bitfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home:LoginScreen()
    );
  }
}

