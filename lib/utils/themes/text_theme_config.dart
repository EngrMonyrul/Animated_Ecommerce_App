import 'package:flutter/material.dart';

class TextThemeConfig {
  TextThemeConfig._();

  static final lightTextThemeConfig = TextTheme(
    labelSmall: const TextStyle().copyWith(
        fontSize: 8, fontWeight: FontWeight.bold, color: Colors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 10, fontWeight: FontWeight.normal, color: Colors.black),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.normal, color: Colors.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 22, fontWeight: FontWeight.normal, color: Colors.black),
    headlineLarge: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
    displaySmall: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium: const TextStyle().copyWith(
        fontSize: 28, fontWeight: FontWeight.normal, color: Colors.black),
    displayLarge: const TextStyle().copyWith(
        fontSize: 34, fontWeight: FontWeight.w600, color: Colors.black),
  );
}
