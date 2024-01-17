import 'package:flutter/material.dart';

class AppFont {
  static TextStyle textStyle(
    double size, {
    Color? color,
    TextDecoration? decoration,
    FontStyle? fontStyle,
    TextOverflow? overflow,
    double? letterSpacing,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontFamily: 'Lato',
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
      fontStyle: fontStyle,
      overflow: overflow,
      letterSpacing: letterSpacing,
    );
  }
}
