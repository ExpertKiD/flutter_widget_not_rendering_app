import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/dimension/sized_box_config.dart';

Widget buildGridViewContainer({
  required String iconName,
  required String labelText,
}) {
  return Container(
    height: getVerticalSize(165),
    width: getHorizontalSize(165),
    decoration: BoxDecoration(
      border: Border.all(
        width: getHorizontalSize(0.5),
        color: ColorsConstant.grey.withOpacity(getVerticalSize(1)),
      ),
      borderRadius: BorderRadius.circular(
        getVerticalSize(8),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: getVerticalSize(48),
          width: getHorizontalSize(48),
          child: Center(
            child: SvgPicture.asset(
              iconName,
              height: getVerticalSize(20),
              width: getHorizontalSize(20),
              color: ColorsConstant.primaryBlue,
              fit: BoxFit.fill,
            ),
          ),
        ),
        getHeight24,
        Text(
          labelText,
          style: getTextMedium14(
            color: ColorsConstant.primaryBlue,
          ),
        ),
      ],
    ),
  );
}
