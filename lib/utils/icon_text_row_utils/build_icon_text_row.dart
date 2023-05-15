import 'package:flutter/material.dart';
import 'package:ukpa_prms_mobile_app/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/dimension/sized_box_config.dart';
import '/utils/icon_utils/get_icon.dart';

Widget buildIconTextRow(
   {
  Widget? leadingIcon,
  required String text,
  Color? containerColor,
}) {
  return Container(
    color: containerColor ?? ColorsConstant.white,
    width: double.maxFinite,
    height: getVerticalSize(30),
    margin: getMargin(
      bottom: getVerticalSize(24),
    ),
    child: Row(
      children: [
        leadingIcon ?? getIconCheckOutline(),
        getWidth16,
        Text(
          text,
          style: getTextLight14(),
        ),
      ],
    ),
  );
}


Widget buildIconTextRowWithInkWell({
  Widget? leadingIcon,
  required String text,
  Color? containerColor,
  required void Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      color: containerColor ?? ColorsConstant.white,
      width: double.maxFinite,
      height: getVerticalSize(30),
      margin: getMargin(
        bottom: getVerticalSize(24),
      ),
      child: Row(
        children: [
          leadingIcon ?? getIconCheckOutline(),
          getWidth16,
          Text(
            text,
            style: getTextLight14(),
          ),
        ],
      ),
    ),
  );
}
