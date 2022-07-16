import 'package:flutter/material.dart';

/*
Paleta de Cores
https://colordesigner.io/
#6A1280, #D90BB6, #697177, #EF5411
*/

class ZeraColors extends ColorSwatch<int> {
  const ZeraColors(int primary, Map<int, Color> swatch) : super(primary, swatch);

  static const int _zPrimaryColorValue = 0xFF6A1280;
  static const MaterialColor zPrimaryColor = MaterialColor(
    _zPrimaryColorValue,
    <int, Color>{
      50: Color(0xFFeecaf8),
      100: Color(0xFFde95f0),
      200: Color(0xFFcd5fe9),
      300: Color(0xFFbd2ae1),
      400: Color(0xFF9619b5),
      500: Color(_zPrimaryColorValue),
      600: Color(0xFF550e66),
      700: Color(0xFF400b4d),
      800: Color(0xFF2a0733),
      900: Color(0xFF15041a),
    },
  );

  static const int _zSecondaryColorValue = 0xFFD90BB6;
  static const MaterialColor zSecondaryColor = MaterialColor(
    _zSecondaryColorValue,
    <int, Color>{
      50: Color(0xFFfdd2f6),
      100: Color(0xFFfaa6ec),
      200: Color(0xFFf879e3),
      300: Color(0xFFf64cd9),
      400: Color(0xFFf41fd0),
      500: Color(_zSecondaryColorValue),
      600: Color(0xFFae0992),
      700: Color(0xFF82076d),
      800: Color(0xFF570449),
      900: Color(0xFF2b0224),
    },
  );

  static const int _zNeutralColorValue = 0xFF697177;
  static const MaterialColor zNeutralColor = MaterialColor(
    _zNeutralColorValue,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFe1e3e4),
      200: Color(0xFFc2c6c9),
      300: Color(0xFFa4aaaf),
      400: Color(0xFF858e94),
      500: Color(_zNeutralColorValue),
      600: Color(0xFF4f5559),
      700: Color(0xFF35393c),
      800: Color(0xFF1a1c1e),
      900: Color(0xFF000000),
    },
  );

  static const int _zAccentColorValue = 0xFFEF5411;
  static const MaterialColor zAccentColor = MaterialColor(
    _zAccentColorValue,
    <int, Color>{
      500: Color(_zAccentColorValue),
    },
  );
}
