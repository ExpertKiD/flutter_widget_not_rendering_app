import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

Widget getChip(
  BuildContext context, {
  required String labelText,
  Color? backgroundColor,
  Color? textColor,
}) {
  return SizedBox(
    height: getVerticalSize(28),
    child: Center(
      child: Chip(
        backgroundColor:
            backgroundColor?.withOpacity(0.1) ?? ColorsConstant.lightGrey,
        padding: EdgeInsets.symmetric(
          horizontal: getHorizontalSize(12),
          vertical: getVerticalSize(2),
        ),
        labelStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: textColor?.withOpacity(1) ?? ColorsConstant.black,
            ),
        label: Text(
          labelText,
        ),
        labelPadding: getPadding(all: 0),
        visualDensity: VisualDensity(
          horizontal: getHorizontalSize(0),
          vertical: getVerticalSize(-4),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
  );
}
