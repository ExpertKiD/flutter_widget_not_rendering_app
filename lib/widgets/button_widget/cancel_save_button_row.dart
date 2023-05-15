import 'package:flutter/material.dart';
import '/constants/strings_constant.dart';
import '/utils/dimension/sized_box_config.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/elevated_button_utils/elevated_button.dart';
import 'custom_button.dart';

Widget buildCancelOrSaveButtonRow({
  required void Function()? cancelPressed,
  required void Function()? savePressed,
  double? leftPadding,
  double? rightPadding,
  String? firstButtonTitle,
  String? secondButtonTitle,
  bool isLoading = false,

}) {
  return Container(
    height: getVerticalSize(80),
    padding: getPadding(
      top: getVerticalSize(10),
      bottom: getVerticalSize(24),
      left: leftPadding,
      right: rightPadding,
      // left: getHorizontalSize(15),
      // right: getHorizontalSize(15),
    ),
    child: Row(
      children: [
        Expanded(
          child: CustomOutlinedButton(
            title: firstButtonTitle ?? AppStrings.cancel,
            onPressed: cancelPressed,
          ),
        ),
        getWidth15,
        Expanded(
          child: CustomElevatedButton(
            isLoading: isLoading,
            onPressed: savePressed,
            title: secondButtonTitle ?? AppStrings.save,
          ),
        ),
      ],
    ),
  );
}
