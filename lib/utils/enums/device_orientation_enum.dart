import 'package:flutter/services.dart';

/// ### Device Orientation Enum
/// __This enum contains device orientation type__
///
/// __Orientations__
/// * [portrait]
/// * [landscape]
enum DeviceOrientationEnum {
  portrait,
  landscape;

  static List<DeviceOrientationEnum> get orientations => values;

  bool get isPortrait => this == portrait;

  bool get isLandscape => this == landscape;

  List<DeviceOrientation>? get orientation => switch (this) {
        portrait => [
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ],
        landscape => [
            DeviceOrientation.landscapeLeft,
            DeviceOrientation.landscapeRight,
          ],
        _ => null,
      };
}
