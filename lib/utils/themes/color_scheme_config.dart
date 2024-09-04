import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorSchemeConfig {
  ColorSchemeConfig._();

  static final lightColorSchemeConfig = ColorScheme.fromSeed(
    seedColor: Colors.deepOrange,
    primary: Colors.deepOrange,
    onPrimary: Colors.white,
    surface: Colors.white,
    onSurface: Colors.black,
    background: Colors.white,
    onBackground: Colors.black,
    tertiary: CupertinoColors.systemGrey5,
    onTertiary: Colors.black,
  );
}
