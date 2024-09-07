import 'package:flutter/material.dart';

class TextThemeConfig {
  TextThemeConfig._();

  static final lightTextThemeConfig = TextTheme(
    labelSmall: const TextStyle().copyWith(
        fontSize: 8, fontWeight: FontWeight.bold, color: Colors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 10, fontWeight: FontWeight.normal, color: Colors.white),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
    titleLarge: const TextStyle().copyWith(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 22, fontWeight: FontWeight.normal, color: Colors.white),
    headlineLarge: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    displaySmall: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium: const TextStyle().copyWith(
        fontSize: 28, fontWeight: FontWeight.normal, color: Colors.white),
    displayLarge: const TextStyle().copyWith(
        fontSize: 34, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
