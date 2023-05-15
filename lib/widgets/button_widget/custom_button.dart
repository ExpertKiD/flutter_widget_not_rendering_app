import 'package:flutter/material.dart';
import '../../constants/styles_constant.dart';
import '/constants/colors_constant.dart';
import '/constants/fonts_constant.dart';
import '/utils/dimension/math_utils.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.buttonTitle,
      required this.onTap,
      this.backgroundColor,
      this.textColor,
      super.key});

  final String buttonTitle;
  final Color? backgroundColor;
  final Color? textColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: getVerticalSize(48),
        width: getHorizontalSize(175),
        decoration: BoxDecoration(
          color: backgroundColor ?? ColorsConstant.primaryBlue,
          border: Border.all(
            width: getHorizontalSize(1),
            color: ColorsConstant.grey,
          ),
          borderRadius: BorderRadius.circular(
            getVerticalSize(24),
          ),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: textColor ?? ColorsConstant.white,
                  fontWeight: FontWeightConstant.bold,
                ),
          ),
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final Color? foregroundColor;
  final TextStyle? textStyle;
  final double? width;
  final Color? bordeColor;
  Widget? icon;

  CustomOutlinedButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.foregroundColor,
    this.textStyle,
    this.width,
    this.bordeColor,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(48),
      width: width ?? getHorizontalSize(165),
      child: OutlinedButton.icon(
        icon: icon ?? const SizedBox.shrink(),
        onPressed: onPressed,
        label: Text(title),
        style: OutlinedButton.styleFrom(
          foregroundColor: foregroundColor ?? ColorsConstant.primaryBlue,
          textStyle: textStyle ?? getButtonTitleTextStyle(),
          side: BorderSide(
            color: bordeColor ?? ColorsConstant.grey,
            width: getHorizontalSize(1),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              getVerticalSize(24),
            ),
          ),
        ),
      ),
    );
  }
}

class OutlineIconButton extends StatelessWidget {
  const OutlineIconButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
    this.color,
  });

  final String title;
  final Function() onPressed;
  final Widget? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(48),
      width: double.maxFinite,
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: icon ?? const SizedBox.shrink(),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          textStyle: getButtonTitleTextStyle(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              getVerticalSize(24),
            ),
          ),
        ),
      ),
    );
  }
}
