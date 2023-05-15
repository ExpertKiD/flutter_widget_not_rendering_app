import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/colors_constant.dart';
import '/constants/image_constant.dart';
import '/utils/dimension/math_utils.dart';

Widget customFloatingActionButton({
  required String iconName,
  required void Function()? onPressed,
}) {
  return Container(
    height: getVerticalSize(64),
    width: getHorizontalSize(64),
    margin: getPadding(bottom: getVerticalSize(24)),
    child: FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: ColorsConstant.primaryBlue,
      child: SvgPicture.asset(
        iconName,
        fit: BoxFit.cover,
        height: getVerticalSize(17),
        width: getHorizontalSize(17),
        color: ColorsConstant.white,
      ),
    ),
  );
}

//Edit Floating Action BUtton
Widget editFloatingActionButton({
  required void Function()? onPressed,
}) {
  return customFloatingActionButton(
    iconName: ImageConstant.iconFeatherEdit,
    onPressed: onPressed,
  );
}

//Add Floating Action Button
Widget addFloatingActionButton({
  required void Function()? onPressed,
}) {
  return customFloatingActionButton(
    iconName: ImageConstant.iconPlus,
    onPressed: onPressed,
  );
}
