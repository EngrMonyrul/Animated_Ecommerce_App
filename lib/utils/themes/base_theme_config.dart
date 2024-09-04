import 'package:ecommerce_landing_page/utils/themes/color_scheme_config.dart';
import 'package:ecommerce_landing_page/utils/themes/text_theme_config.dart';
import 'package:flutter/material.dart';

class BaseThemeConfig {
  BaseThemeConfig._();

  static final lightBaseThemeConfig = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorSchemeConfig.lightColorSchemeConfig,
    textTheme: TextThemeConfig.lightTextThemeConfig,
    fontFamily: "poppins",
  );
}
