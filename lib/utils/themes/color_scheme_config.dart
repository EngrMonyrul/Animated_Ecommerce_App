import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorSchemeConfig {
  ColorSchemeConfig._();

  static final lightColorSchemeConfig = ColorScheme.fromSeed(
    seedColor: Colors.deepOrange,
    primary: Colors.deepOrange,
    onPrimary: Colors.white,
    surface: Colors.black,
    onSurface: Colors.white,
    background: Colors.black,
    onBackground: Colors.white,
    tertiary: CupertinoColors.systemGrey5,
    onTertiary: Colors.black,
  );
}
