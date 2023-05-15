import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/colors_constant.dart';
import '/constants/image_constant.dart';
import '/utils/dimension/math_utils.dart';

Widget getPictureContainer(
    {required void Function()? onTap,
    double? containerHeight,
    double? containerWidth,
    String? iconName,
    double? iconHeight,
    double? iconWidth,
    Color? iconColor,
    Color? backgroundColor,
    Widget? widget,
    double? marginTop,
    double? marginBottom,
    Color? borderColor}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: getMargin(
        top: marginTop ?? getVerticalSize(48),
        bottom: marginBottom ?? getVerticalSize(48),
      ),
      height: getVerticalSize(125),
      width: double.infinity,
      child: Container(
        height: containerHeight ?? getVerticalSize(125),
        width: containerWidth ?? getHorizontalSize(125),
        decoration: BoxDecoration(
            color: backgroundColor ?? ColorsConstant.lightGrey,
            shape: BoxShape.circle,
            border: Border.all(
                color: borderColor ?? ColorsConstant.primaryBlue, width: 1)),
        child: Center(
          child: widget ??
              SvgPicture.asset(
                iconName ?? ImageConstant.iconCamera,
                height: iconHeight ?? getVerticalSize(24),
                width: iconWidth ?? getHorizontalSize(26),
                color: iconColor ?? ColorsConstant.grey,
              ),
        ),
      ),
    ),
  );
}
