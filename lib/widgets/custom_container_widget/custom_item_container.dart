import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

class CustomItemContainer extends StatelessWidget {
  const CustomItemContainer({
    required this.column,
    this.topPadding,
    this.rightPadding,
    super.key,
  });
  final Column column;
  final double? topPadding;
  final double? rightPadding;


  @override
  Widget build(BuildContext context) {
    return Container(
      // height: getVerticalSize(138),
      width: double.maxFinite,
      padding: getPadding(
        top: topPadding ?? getVerticalSize(16),
        bottom: getVerticalSize(16),
        left: getHorizontalSize(16),
        right: rightPadding ?? getHorizontalSize(16),
      ),

      decoration: BoxDecoration(
        color: ColorsConstant.white,
        borderRadius: BorderRadius.circular(
          getVerticalSize(16),
        ),
      ),
      child: SingleChildScrollView(
        child: column,
      ),
    );
  }
}
