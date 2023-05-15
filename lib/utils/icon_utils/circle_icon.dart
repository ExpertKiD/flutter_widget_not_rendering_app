import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/colors_constant.dart';
import '/constants/image_constant.dart';
import '/utils/dimension/math_utils.dart';

Widget getCircleIcon({
  double? containerHeight,
  double? containerWidth,
  Color? color,
  required String iconName,
  double? iconHeight,
  double? iconWidth,
}) {
  return Container(
    height: containerHeight ?? getVerticalSize(48),
    width: getHorizontalSize(48),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        width: getHorizontalSize(1),
        color: color ?? ColorsConstant.primaryBlue,
      ),
    ),
    child: Center(
      child: SvgPicture.asset(
        iconName,
        height: iconHeight ?? getVerticalSize(14),
        width: iconWidth ?? getHorizontalSize(14),
        color: color ?? ColorsConstant.primaryBlue,
      ),
    ),
  );
}

Widget getAddCircleIcon({required void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: getCircleIcon(
      iconName: ImageConstant.iconPlus,
    ),
  );
}

Widget getCancelCircleIcon({required void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: getCircleIcon(
      iconName: ImageConstant.iconCrossDelete,
      color: ColorsConstant.red,
    ),
  );
}

Widget getEditCircleIcon({required void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: getCircleIcon(
      iconName: ImageConstant.iconFeatherEdit,
      color: ColorsConstant.grey,
        iconHeight: getVerticalSize(17),
        iconWidth: getHorizontalSize(17)
    ),
  );
}

Widget getDeleteCircleIcon({required void Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: getCircleIcon(
        iconName: ImageConstant.iconFeatherTrash,
        color: ColorsConstant.grey,
        iconHeight: getVerticalSize(17),
        iconWidth: getHorizontalSize(17)),
  );
}
