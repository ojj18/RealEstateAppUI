import 'dart:ui';

import 'package:Realify/themes/sizeConfig.dart';
import 'package:flutter/material.dart';

class FontConfig {
  static String logoFont = "Mackless-Script";
  static String regular = "JosefinSans-Regular";
  static String bold = "JosefinSans-SemiBold";
}

class ColorConfig {
  static Color primary = Color.fromRGBO(126, 140, 245, 1);
  static Color secondary = Color.fromRGBO(255, 255, 255, 1);
  static Color dark = Color.fromRGBO(0, 0, 0, 1);
  static Color light = Color.fromRGBO(255, 255, 255, 1);
  static Color grey = Color.fromRGBO(0, 0, 0, 0.5);
  static Color greyDark = Color.fromRGBO(0, 0, 0, 0.9);
  static Color greyLight = Color.fromRGBO(0, 0, 0, 0.2);
  static Color smokeDark = Color.fromRGBO(0, 0, 0, 0.1);
  static Color smokeLight = Color.fromRGBO(0, 0, 0, 0.09);
  static Color smoke = Color.fromRGBO(0, 0, 0, 0.03);
  static Color lightGreen = Color.fromRGBO(63, 172, 118, 1);
  static Color lightGreenBg = Color.fromRGBO(63, 172, 118, 0.1);
  static Color darkGreen = Color.fromRGBO(13, 98, 104, 1);
  static Color red = Color.fromRGBO(241, 1, 0, 1);
  static Color yellow = Color.fromRGBO(247, 192, 0, 1);
  static Color violet = Color.fromRGBO(204, 163, 255, 1);
  static Color skyBlue = Color.fromRGBO(0, 191, 255, 1);
  static Color blue = Color.fromRGBO(38, 79, 184, 1);
}

class Sizeconfig {
  static double tiny = 1.5 * SizeConfig.textMultiplier;
  static double small = 1.85 * SizeConfig.textMultiplier;
  static double medium = 2 * SizeConfig.textMultiplier;
  static double compact = 2.25 * SizeConfig.textMultiplier;
  static double large = 2.5 * SizeConfig.textMultiplier;
  static double huge = 3 * SizeConfig.textMultiplier;
  static double higantic = 4.5 * SizeConfig.textMultiplier;
}
