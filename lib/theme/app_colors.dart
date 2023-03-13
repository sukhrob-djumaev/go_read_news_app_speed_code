import 'package:flutter/material.dart';

class AppColors {
  static const Color azureRadiance = Color(0xFF0B86E7);

  static const Color white = Color(0xFFFFFFFF);
  static const Color white02 = Color(0x33FFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color black08 = Color(0xCC000000);
  static const Color black06 = Color(0x99000000);
  static const Color black00 = Color(0x00000000);

  static const Color osloGray = Color.fromRGBO(148, 154, 154, 1);
  static const Color athenasGray = Color(0xFFF6F5F8);
  static const Color porcelain = Color(0xFFeceef0);

  static const MaterialColor azureRadianceSwatch = MaterialColor(0xFF0B86E7, _azureRadianceMap);

  static const Map<int, Color> _azureRadianceMap = {
    50: Color.fromRGBO(11, 134, 231, .1),
    100: Color.fromRGBO(11, 134, 231, .2),
    200: Color.fromRGBO(11, 134, 231, .3),
    300: Color.fromRGBO(11, 134, 231, .4),
    400: Color.fromRGBO(11, 134, 231, .5),
    500: Color.fromRGBO(11, 134, 231, .6),
    600: Color.fromRGBO(11, 134, 231, .7),
    700: Color.fromRGBO(11, 134, 231, .8),
    800: Color.fromRGBO(11, 134, 231, .9),
    900: Color.fromRGBO(11, 134, 231, 1),
  };
}
