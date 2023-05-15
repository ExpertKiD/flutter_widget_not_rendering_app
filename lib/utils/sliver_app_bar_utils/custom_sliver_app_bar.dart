import 'package:flutter/material.dart';

import '/utils/dimension/math_utils.dart';
import '/utils/icon_utils/get_icon.dart';

import '/constants/colors_constant.dart';
import '/constants/fonts_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/icon_utils/get_icon.dart';
import '/utils/icon_utils/icon_container.dart';
import '/utils/text_utils.dart/text_style.dart';

class CustomSliverAppBar extends StatelessWidget {
  CustomSliverAppBar({
    this.appBarTitle = '',
    this.leading,
    this.appBarTextStyle,
    this.actions,
    this.bottom,
    super.key,
  });

  final String appBarTitle;
  final Widget? leading;
  final TextStyle? appBarTextStyle;
  final List<Widget>? actions;
  PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      leading: leading,
      title: Text(
        appBarTitle,
        style: appBarTextStyle,
      ),
      actions: actions,
      bottom: bottom,
    );
  }
}
