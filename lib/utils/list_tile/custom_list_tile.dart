import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

customListTile(
  BuildContext context, {
  final String? leadingIconName,
  final double? leadingIconHeight,
  final double? leadingIconWidth,
  final Color? leadingIconColor,
  required String textTitle,
  final Widget? subtitle,
  Widget? trailing,
  Color? textColor,
  required void Function()? onTap,
}) {
  return ListTile(
    contentPadding: getPadding(all: 0),
    horizontalTitleGap: getHorizontalSize(16),
    dense: true,
    leading: SvgPicture.asset(
      leadingIconName ?? '',
      height: leadingIconHeight,
      width: leadingIconWidth,
      color: leadingIconColor ?? ColorsConstant.pureBlack,
    ),
    title: Text(
      textTitle,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(
        color: textColor ?? ColorsConstant.black,
      ),
    ),
    subtitle: subtitle,
    trailing: trailing,
    onTap: onTap,
  );
}
