import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

Widget buildListTile(
  BuildContext context, {
  required String leadingIconName,
  double? leadingIconHeight,
  double? leadingIconWidth,
  required String title,
  required void Function()? onTap,
}) {
  return ListTile(
    onTap: onTap,
    leading: SvgPicture.asset(
      leadingIconName,
      height: leadingIconHeight ?? getVerticalSize(22),
      width: leadingIconWidth ?? getHorizontalSize(20),
      color: ColorsConstant.primaryBlue,
      fit: BoxFit.fill,
    ),
    title: Text(
      title,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: ColorsConstant.primaryBlue,
          ),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_outlined,
      size: getVerticalSize(14),
      color: ColorsConstant.primaryBlue,
    ),
  );
}
