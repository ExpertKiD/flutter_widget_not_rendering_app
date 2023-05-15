import 'package:flutter/material.dart';
import 'package:ukpa_prms_mobile_app/constants/colors_constant.dart';
import 'package:ukpa_prms_mobile_app/utils/dimension/math_utils.dart';

Widget errorText({required String errorText, double? leftPadding}) {
  return Padding(
    padding: getPadding(left: leftPadding ?? getHorizontalSize(32)),
    child: Text(
      errorText,
      style: TextStyle(
          color: ColorsConstant.red,
          fontWeight: FontWeight.w400,
          fontSize: getFontSize(12)),
    ),
  );
}
