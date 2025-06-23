import 'package:bitfolio/core/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      primaryColor: AppColors.primary,
      brightness: Brightness.light,
      fontFamily: 'TrialSagace',
      scaffoldBackgroundColor: AppColors.lightBackground,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: AppColors.drakGrey),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.drakGrey,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: AppColors.white,
              backgroundColor: AppColors.primary,
              elevation: 0,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))));

  static final darkTheme = ThemeData(
      primaryColor: AppColors.white,
      brightness: Brightness.dark,
      fontFamily: 'TrialSagace',
      scaffoldBackgroundColor: AppColors.darkBackground,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: AppColors.drakGrey),
        contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.drakGrey,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              foregroundColor: AppColors.primary,
              backgroundColor: AppColors.white,
              elevation: 0,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)))));
}
