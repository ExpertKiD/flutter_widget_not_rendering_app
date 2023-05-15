import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';

class ButtonTabBarContainer extends StatelessWidget {
  const ButtonTabBarContainer(
      {required this.tabs,
      required this.controller,
      required this.onTap,
      super.key});

  final List<Widget> tabs;
  final TabController? controller;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(40),
      child: ButtonsTabBar(
        contentPadding: EdgeInsets.symmetric(
          horizontal: getHorizontalSize(12),
          vertical: getVerticalSize(4),
        ),
        controller: controller,
        tabs: tabs,
        labelStyle: getTextMedium14(color: ColorsConstant.white),
        unselectedLabelStyle: getTextMedium14(),
        backgroundColor: ColorsConstant.primaryBlue,
        unselectedBackgroundColor: ColorsConstant.white,
        radius: getVerticalSize(18),
        onTap: onTap,
      ),
    );
  }
}
