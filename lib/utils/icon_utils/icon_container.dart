import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

Widget customIconContainer(
    {required double height, required double width, Color? color, required Widget widget}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color ?? ColorsConstant.lightGrey,
      shape: BoxShape.circle,
    ),
    child: widget,
  );
}

Widget getTrailingIconContainer({Color? color, required Widget widget}) {
  return customIconContainer(
    height: getVerticalSize(40),
    width: getHorizontalSize(40),
    color: color,
    widget: widget,
  );
}

Widget getLeadingIconContainer({required Widget widget}) {
  return customIconContainer(
    height: getVerticalSize(50),
    width: getHorizontalSize(50),
    widget: Padding(
      padding: getPadding(
        all: getVerticalSize(13),
      ),
      child: widget,
    ),
  );
}
