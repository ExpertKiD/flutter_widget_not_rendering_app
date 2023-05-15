import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';

ThemeData appThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsConstant.lightGrey,
    primaryColor: ColorsConstant.primaryBlue,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: ColorsConstant.primaryBlue,
      secondary: ColorsConstant.secondaryBlue,
    ),
    //app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: false,
      elevation: getVerticalSize(0),
      backgroundColor: ColorsConstant.white,
      titleTextStyle: getAppBarTitleTextStyle(),
    ),
    errorColor: ColorsConstant.red,

    //button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getButtonTitleTextStyle(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getVerticalSize(24),
          ),
        ),
      ),
    ),

    //text theme
    textTheme: TextTheme(
      headline5: getHeadline5(),
      headline6: getHeadline6(),
      subtitle1: getSubTitle1(),
      subtitle2: getSubTitle2(),
      bodyText1: getBodyText1(),
      bodyText2: getBodyText2(),
    ),
  );
}
