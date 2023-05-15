import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

Widget getChipContainer(
  BuildContext context, {
  required String labelText,
  bool isActive = false,
}) {
  return Container(
    height: getVerticalSize(24),
    padding: EdgeInsets.symmetric(
      horizontal: getVerticalSize(12),
      vertical: getVerticalSize(2),
    ),
    decoration: BoxDecoration(
      color: isActive
          ? ColorsConstant.lightGreen
          : ColorsConstant.lightRed.withOpacity(0.1),
      borderRadius: BorderRadius.circular(
        getVerticalSize(12),
      ),
    ),
    child: Text(
      labelText,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: isActive ? ColorsConstant.green : ColorsConstant.red,
          ),
    ),
  );
}

Widget getVacantChipContainer(
  BuildContext context, {
  required String labelText,
  bool isVacant = false,
}) {
  return Container(
    height: getVerticalSize(24),
    padding: EdgeInsets.symmetric(
      horizontal: getVerticalSize(12),
      vertical: getVerticalSize(2),
    ),
    decoration: BoxDecoration(
      color: !isVacant
          ? ColorsConstant.lightRed.withOpacity(0.1)
          : ColorsConstant.lightGreen,
      borderRadius: BorderRadius.circular(
        getVerticalSize(12),
      ),
    ),
    child: Text(
      labelText,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: !isVacant ? ColorsConstant.red : ColorsConstant.green,
          ),
    ),
  );
}

Widget getNormalChipContainer(
  BuildContext context, {
  required String labelText,
  Color? color,
}) {
  return Container(
    height: getVerticalSize(24),
    padding: EdgeInsets.symmetric(
      horizontal: getVerticalSize(12),
      vertical: getVerticalSize(2),
    ),
    decoration: BoxDecoration(
      color: color ?? ColorsConstant.lightGrey,
      borderRadius: BorderRadius.circular(
        getVerticalSize(12),
      ),
    ),
    child: Text(
      labelText,
      style: Theme.of(context).textTheme.bodyText2,
    ),
  );
}
