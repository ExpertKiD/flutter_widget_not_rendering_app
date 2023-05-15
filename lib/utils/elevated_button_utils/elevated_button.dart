import 'package:flutter/material.dart';
import 'package:ukpa_prms_mobile_app/constants/styles_constant.dart';
import 'package:ukpa_prms_mobile_app/utils/circular_progress_indicator_utils/circular_progress_indicator_utils.dart';
import '/constants/colors_constant.dart';

import '/utils/dimension/math_utils.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.height,
    this.width,
    this.isLoading = false,
    this.isChecked = false,
  });

  final String title;
  final void Function()? onPressed;
  double? height;
  double? width;
  bool? isChecked;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? getVerticalSize(48),
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Center(
          child: isLoading
              ? Padding(
                  padding: getPadding(
                    all: getVerticalSize(8),
                  ),
                  child: SizedBox(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(24),
                    child: CircularProgressIndicator.adaptive(
                      
                      
                      strokeWidth: getVerticalSize(3),
                      backgroundColor: ColorsConstant.white,
                    ),
                  ),
                )
              : Text(
                  title,
                  // style: getTextBold14(
                  //    color: isChecked ? ColorsConstant.white : ColorsConstant.grey,
                  // ),
                ),
        ),
      ),
    );
  }
}

//ElevatedButton With Icon
class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
    this.bgColor,
    this.fgColor,
    this.isLoading = false,
  });

  final String title;
  final void Function()? onPressed;
  final Widget? icon;
  final Color? bgColor;
  final Color? fgColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(48),
      width: double.maxFinite,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon!,
        label: isLoading
            ? getCircularProgressIndicator()
            : Text(title),
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor, foregroundColor: fgColor),
      ),
    );
  }
}
