import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/image_constant.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/icon_utils/icon_container.dart';

Widget getForwardArrowIcon() {
  return getTrailingIconContainer(
    widget: Icon(
      Icons.arrow_forward_ios_outlined,
      size: getVerticalSize(18),
      color: ColorsConstant.black,
    ),
  );
}

Widget getAppBarBackIcon(BuildContext context, {void Function()? onPressed}) {
  return Padding(
    padding: getPadding(
      top: getVerticalSize(8),
      bottom: getVerticalSize(8),
      left: getHorizontalSize(15),
    ),
    child: customIconContainer(
      height: getVerticalSize(40),
      width: getHorizontalSize(40),
      widget: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed ??
            () {
              Navigator.of(context).pop();
            },
        icon: SizedBox(
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: ColorsConstant.black,
            size: getVerticalSize(18),
          ),
        ),
      ),
    ),
  );
}

Widget getCloseIcon(BuildContext context, {void Function()? onPressed}) {
  return Padding(
    padding: getPadding(
      right: getHorizontalSize(15),
    ),
    child: getTrailingIconContainer(
      widget: IconButton(
        padding: getPadding(all: 0),
        onPressed: onPressed ??
            () {
              Navigator.of(context).pop();
            },
        icon: Icon(
          Icons.close_outlined,
          color: ColorsConstant.black,
        ),
      ),
    ),
  );
}

Widget getCloseIconForImage(
    {Color? color, required void Function()? onPressed}) {
  return Padding(
    padding: getPadding(
      right: getHorizontalSize(16),
    ),
    child: getTrailingIconContainer(
      color: color,
      widget: IconButton(
        padding: getPadding(all: 0),
        onPressed: onPressed,
        icon: Icon(
          Icons.close_outlined,
          color: ColorsConstant.black,
        ),
      ),
    ),
  );
}

//for check icon
Widget getIconCheck({
  required String iconCheckName,
  double? iconHeight,
  double? iconWidth,
  Color? color,
}) {
  return SvgPicture.asset(
    iconCheckName,
    height: iconHeight ?? getVerticalSize(26),
    width: iconWidth ?? getHorizontalSize(26),
    color: color ?? ColorsConstant.grey,
  );
}

Widget getIconCheckOutline() {
  return getIconCheck(
    iconCheckName: ImageConstant.iconCheckOutline,
    color: ColorsConstant.green,
  );
}

Widget getIconCheckCircle() {
  return getIconCheck(
    iconCheckName: ImageConstant.iconCheckCircle,
  );
}

Widget getIconMapPin({
  String? iconName,
  double? iconHeight,
  double? iconWidth,
}) {
  return SvgPicture.asset(
    iconName ?? ImageConstant.iconFeatherMapPin,
    height: iconHeight ?? getVerticalSize(15),
    width: iconWidth ?? getHorizontalSize(12),
    fit: BoxFit.cover,
  );
}

//search button
Widget getActionButtonSearch({required void Function()? onPressed}) {
  return IconButton(
    padding: getPadding(right: getHorizontalSize(0)),
    onPressed: onPressed,
    alignment: Alignment.centerRight,
    icon: SvgPicture.asset(
      ImageConstant.iconFeatherSearch,
      height: getVerticalSize(16),
      width: getHorizontalSize(16),
    ),
  );
}

//filter button
Widget getActionBUttonFilter({required void Function()? onPressed}) {
  return IconButton(
    onPressed: onPressed,
    icon: SvgPicture.asset(
      ImageConstant.iconFeatherFilter,
      height: getVerticalSize(18),
      width: getHorizontalSize(20),
    ),
  );
}

//calendar icon
Widget getCalendarIcon({double? width, double? height, double? topPadding, double? bottomPadding, double? rightPadding, double? leftPadding}) {
  return Padding(
    padding: getPadding(
      top: topPadding ?? getVerticalSize(16),
      bottom: bottomPadding ?? getVerticalSize(16),
      left: leftPadding ?? getHorizontalSize(24),
      right: rightPadding ?? getHorizontalSize(12),
    ),
    child: SvgPicture.asset(
      ImageConstant.iconFetherCalendar,
      width: width ?? getHorizontalSize(13),
      height: height ?? getVerticalSize(12),
      fit: BoxFit.fill,
    ),
  );
}

Widget getMenuBarIcon() {
  return customIconContainer(
    height: getVerticalSize(58),
    width: getHorizontalSize(48),
    widget: Center(
      child: SvgPicture.asset(
        ImageConstant.iconSystemMetric,
        height: getVerticalSize(12),
        width: getHorizontalSize(18),
        fit: BoxFit.fill,
        color: ColorsConstant.primaryBlue,
      ),
    ),
  );
}
