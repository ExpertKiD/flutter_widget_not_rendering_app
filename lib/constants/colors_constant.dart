import 'dart:async';

import 'package:flutter/material.dart';

class ColorsConstant {
  static Color primaryBlue = fromHex('#012169');
  static Color secondaryBlue = fromHex('#2680EB');
  static Color white = fromHex('#FFFFFF');

  static Color black = fromHex('#00040E');
  static Color red = fromHex('#C8102E');
  static Color grey = fromHex('#C0C0C0');
  static Color middleGrey = fromHex('#A8AAAC');
  static Color lightGrey = fromHex('#F6F6F7');

  static Color lightRed = fromHex("#DB4A39");

  static Color green = fromHex('#41C810');

  static Color yellow = fromHex('#F0C000');

  static Color blueBold = fromHex('#2680EB');

  static Color lightGreen = green.withOpacity(0.1);

  static Color fbColor = fromHex('#4267B2');
  static Color ligthBlue = fromHex('#2680eb');
  static Color pureBlack = fromHex('#000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
