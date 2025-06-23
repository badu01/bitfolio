import 'package:bitfolio/core/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SplashLogo extends StatefulWidget {
  const SplashLogo({super.key});

  @override
  State<SplashLogo> createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  int index = 0;
  final int length = 8;

  @override
  void initState() {
    super.initState();
    animate();
  }

  void animate() async {
    while (mounted) {
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() {
        index = (index + 1) % length;
      });
    }
  }

  Text _buildLetter(String letter, int i) {
    return Text(
      index == i ? letter.toUpperCase() : letter.toLowerCase(),
      style: TextStyle(
        fontSize: 40,
        fontFamily: index == i ? 'Dirtyline' : 'TrialSagace',
        color: index == i ? Colors.green : AppColors.primary,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const word = 'bitfolio';

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(word.length, (i) {
        return _buildLetter(word[i], i);
      }),
    );
  }
}
