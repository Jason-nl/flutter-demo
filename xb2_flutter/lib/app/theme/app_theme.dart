import 'package:flutter/material.dart';

// 定制应用的主题样式
class AppTheme {
  // 亮色主题
  static ThemeData light = ThemeData(
    primaryColor: Colors.deepPurpleAccent, colorScheme: const ColorScheme.light(
      primary: Colors.deepPurpleAccent,
      secondary: Colors.amber
    ).copyWith(secondary: Colors.deepPurple.shade900)
  );
  
  // 亮色主题
  static ThemeData dark = ThemeData(
    primaryColor: Colors.deepPurpleAccent, colorScheme: const ColorScheme.dark(
      primary: Colors.cyan,
      secondary: Colors.amber
    ).copyWith(secondary: Colors.deepPurple.shade900)
  );
}
