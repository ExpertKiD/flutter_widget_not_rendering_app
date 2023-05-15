import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

getModuleDivider() {
  return Divider(
    thickness: getVerticalSize(1),
    color: ColorsConstant.grey,
    indent: getHorizontalSize(16),
    endIndent: getHorizontalSize(16),
  );
}

getDivider() {
  return Divider(
    thickness: getVerticalSize(1),
    color: ColorsConstant.lightGrey,
  );
}

//divider with middle grey color
getDividerWithMiddleGrey() {
  return Divider(
    thickness: getVerticalSize(1),
    color: ColorsConstant.middleGrey.withOpacity(0.2),
  );
}

//dotted line divider
getDottedLine() {
  return DottedLine(
    lineThickness: getHorizontalSize(1),
    dashColor: ColorsConstant.grey.withOpacity(0.4),
  );
}
