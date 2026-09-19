import 'package:flutter/material.dart';
import 'package:green_mart_app/core/style/app_color.dart';
import 'package:green_mart_app/core/style/app_themes.dart';
import 'package:green_mart_app/core/style/text_style.dart';
import 'package:green_mart_app/features/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
