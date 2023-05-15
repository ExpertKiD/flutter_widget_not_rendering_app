import 'package:flutter/material.dart';
import '../utils/dimension/math_utils.dart';
class FontConstant{
  static const String fontFamilyPoppins="Poppins";
  static const String fontFamilyQuickSan="QuickSand";
  static const String fontFamilyNunitoSans="NunitoSans";

}

class FontWeightConstant{
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight regular = FontWeight.w500;
  static const FontWeight medium = FontWeight.w400;
  static const FontWeight light = FontWeight.w300;
  
}

class FontSizeConstant{
  final double size10 = getFontSize(10);
  final double size12 = getFontSize(12);
  final double size14 = getFontSize(14);
  final double size16 = getFontSize(16);
  final double size18 = getFontSize(18);
  final double size20 = getFontSize(20);
  final double size24 = getFontSize(24);
  final double size25= getFontSize(25);
}

