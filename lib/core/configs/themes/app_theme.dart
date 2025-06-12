import 'package:bitfolio/core/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.lightBackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            inherit: false,
            color: Colors.white
          ),
          backgroundColor: AppColors.primary,
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
        )
      )
  );

  static final darkTheme = ThemeData(
      primaryColor: AppColors.white,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.darkBackground,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            inherit: false,
            color: AppColors.primary
          ),
          backgroundColor: AppColors.white,
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
        )
      )
  );
}