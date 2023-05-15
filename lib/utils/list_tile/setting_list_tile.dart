import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/icon_utils/get_icon.dart';
import '/utils/icon_utils/icon_container.dart';

buildSettingListTile(
  BuildContext context, {
  required String title,
  required String leadingIconName,
  required void Function()? onTap,
  Color? textColor,
  Color? iconColor,
}) {
  return ListTile(
    contentPadding: getPadding(
      left: getHorizontalSize(0),
      right: getHorizontalSize(0),
    ),
    onTap: onTap,
    leading: getLeadingIconContainer(
      widget: SvgPicture.asset(
        leadingIconName,
        fit: BoxFit.fill,
        color: iconColor ?? ColorsConstant.black,
      ),
    ),
    title: Text(
      title,
      style: Theme.of(context).textTheme.subtitle1!.copyWith(
            color: textColor,
          ),
    ),
    trailing: getForwardArrowIcon(),
  );
}
