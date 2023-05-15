import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/constants/fonts_constant.dart';
import '/utils/dimension/math_utils.dart';

// App bar title text style
TextStyle getAppBarTitleTextStyle() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size24,
    fontWeight: FontWeightConstant.bold,
    color: ColorsConstant.black,
  );
}

// Button title text style
TextStyle getButtonTitleTextStyle() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.bold,
    color: ColorsConstant.black,
  );
}

//headline 5
TextStyle getHeadline5() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size24,
    fontWeight: FontWeightConstant.bold,
    color: ColorsConstant.black,
  );
}

//headline 6
TextStyle getHeadline6() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size20,
    fontWeight: FontWeightConstant.medium,
    letterSpacing: getHorizontalSize(0.08),
    color: ColorsConstant.black,
  );
}

// subtitle 1
TextStyle getSubTitle1() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size16,
    fontWeight: FontWeightConstant.regular,
    color: ColorsConstant.black,
  );
}

// subtitle 2
TextStyle getSubTitle2() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.semiBold,
    color: ColorsConstant.black,
  );
}

// bodytext 1
TextStyle getBodyText1() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size16,
    fontWeight: FontWeightConstant.medium,
    color: ColorsConstant.black,
  );
}

// bodytext 1
TextStyle getBodyText2() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.light,
    color: ColorsConstant.black,
  );
}

//for text size: 12
TextStyle gettextStyle12({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size12,
    fontWeight: FontWeightConstant.regular,
    color: color ?? ColorsConstant.black,
  );
}

//for text style: Poppins, light, 16
TextStyle getTextLight16({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size16,
    fontWeight: FontWeightConstant.light,
    color: color ?? ColorsConstant.black,
  );
}

//for text style: Poppins, Bold, 16
TextStyle getTextBold16({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size16,
    fontWeight: FontWeightConstant.bold,
    color: color ?? ColorsConstant.black,
  );
}

//for text style: Poppins, Light, 14, grey ['#c0c0c0']
TextStyle getTextLightGrey14({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.light,
    color: color ?? ColorsConstant.grey,
  );
}

//for text style: Poppins, Medium, 14
TextStyle getTextMedium14({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.medium,
    color: color ?? ColorsConstant.black,
  );
}

//for text style: Poppins, Medium, 14
TextStyle getTextMedium16({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size16,
    fontWeight: FontWeightConstant.medium,
    color: color ?? ColorsConstant.black,
  );
}

//for text style: Poppins, Light, 14
TextStyle getTextLight14({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.light,
    color: color ?? ColorsConstant.black,
  );
}

//for text style: Poppins, Bold, 20
TextStyle getTextBold20({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size20,
    fontWeight: FontWeightConstant.bold,
    letterSpacing: getHorizontalSize(0.08),
    color: color ?? ColorsConstant.black,
  );
}

//for text style: Poppins, Bold, 24
TextStyle getTextBold24({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size24,
    fontWeight: FontWeightConstant.bold,
    letterSpacing: getHorizontalSize(0.08),
    color: color ?? ColorsConstant.black,
  );
}

//for text style: Poppins, Bold, 14
TextStyle getTextBold14({Color? color}) {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.bold,
    letterSpacing: getHorizontalSize(0.08),
    color: color ?? ColorsConstant.black,
  );
}


TextStyle get16Bold() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size16,
    fontWeight: FontWeightConstant.bold,
    letterSpacing: 0.06,
    color: ColorsConstant.black,
  );
}

TextStyle get14Bold() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.bold,
    letterSpacing: 0.00,
    color: ColorsConstant.black,
  );
}

TextStyle get16light() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size16,
    fontWeight: FontWeightConstant.light,
    letterSpacing: 0.00,
    color: ColorsConstant.black,
  );
}

TextStyle get14lightgrey() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.medium,
    color: ColorsConstant.grey,
  );
}

TextStyle get14Red() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.light,
    color: ColorsConstant.red,
  );
}

TextStyle get14Green() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.light,
    color: ColorsConstant.green,
  );
}

TextStyle get14BlueBold() {
  return TextStyle(
    fontFamily: FontConstant.fontFamilyPoppins,
    fontSize: FontSizeConstant().size14,
    fontWeight: FontWeightConstant.bold,
    color: ColorsConstant.blueBold,
  );
}
