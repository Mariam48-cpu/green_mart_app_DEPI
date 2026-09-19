import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constant/app_design.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/text_style.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,

    fontFamily: 'Poppins',

    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColor.blackColor),
    ),

    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColor.textFieldColor,

      hintStyle: TextStyle(color: AppColor.greyColor, fontSize: 12),

      contentPadding: const EdgeInsets.symmetric(horizontal: AppDesign.ContentPadding, vertical: 14),

      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(15),
      ),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(15),
      ),

      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(15),
      ),
    ),

    colorScheme: const ColorScheme.light(
      primary: AppColor.primaryColor,
      onSurface: AppColor.blackColor,
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColor.primaryColor,
      unselectedItemColor: AppColor.blackColor,
      type: BottomNavigationBarType.fixed,
      elevation: 0,

      selectedLabelStyle: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),

      unselectedLabelStyle: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
