import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pallet_mobile/src/core/app_utils/styles/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppTheme {
  AppTheme._();

  static _themeData() => ThemeData(
      // constant app styling should be updated here
      scaffoldBackgroundColor: AppColors.scaffoldBackground,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
          iconTheme: IconThemeData(
            size: 18.sp,
          )),
      textTheme: GoogleFonts.interTextTheme(_textTheme()),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.graylight2,
        elevation: 0,
        selectedItemColor: AppColors.primarymain,
        unselectedItemColor: AppColors.primarylight,
        selectedLabelStyle: TextStyle(
            color: AppColors.primarymain,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp),
        unselectedLabelStyle: TextStyle(
            color: AppColors.primarylight,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp),
      ));

  static TextTheme _textTheme() => TextTheme(
        // These are textstyles that are used at least twice. If a textstyle is used more than once and it's not defined here, you should add it.
        titleLarge: TextStyle(
            color: AppColors.scaffoldBackground,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp),
        headlineLarge: TextStyle(
            color: AppColors.scaffoldBackground,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp),
        labelLarge: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: AppColors.secondarydark,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness: 2,
            color: AppColors.secondarydark,
            fontWeight: FontWeight.w500,
            fontSize: 16.sp),
        headlineMedium: TextStyle(
            color: AppColors.scaffoldBackground,
            fontWeight: FontWeight.w400,
            fontSize: 16.sp),
        bodyLarge: TextStyle(
            color: AppColors.scaffoldBackground,
            fontWeight: FontWeight.w500,
            fontSize: 12.sp),
        titleMedium: TextStyle(
            color: AppColors.scaffoldBackground,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp),
        bodyMedium: TextStyle(
            color: AppColors.graylight12,
            fontWeight: FontWeight.w500,
            fontSize: 12.sp),
        displayMedium: TextStyle(
            color: AppColors.graylight12,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp),
        labelMedium: TextStyle(
            color: AppColors.graylight9,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp),
        labelSmall: TextStyle(
            color: AppColors.scaffoldBackground,
            fontWeight: FontWeight.w400,
            fontSize: 12.sp),
        bodySmall: TextStyle(
            color: AppColors.graylight12,
            fontWeight: FontWeight.w400,
            fontSize: 8.sp),
        displaySmall: TextStyle(
            color: AppColors.primarymain,
            fontWeight: FontWeight.w400,
            fontSize: 10.sp),
        headlineSmall: TextStyle(
            color: AppColors.scaffoldBackground,
            fontWeight: FontWeight.w400,
            fontSize: 8.sp),
        titleSmall: TextStyle(
            color: AppColors.scaffoldBackground,
            fontWeight: FontWeight.w500,
            fontSize: 10.sp),
      );

  static ThemeData lightTheme = _themeData();
}
