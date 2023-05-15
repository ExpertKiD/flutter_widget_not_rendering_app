import 'package:flutter/material.dart';
import '/utils/dimension/math_utils.dart';

PreferredSize buildBottomPrefferedSize({required Widget child}){
  return PreferredSize(
    preferredSize: Size(
      double.maxFinite,
      getVerticalSize(70),
    ),
    child: Padding(
      padding: getPadding(
        top: getVerticalSize(14),
        bottom: getVerticalSize(14),
        left: getHorizontalSize(17),
        right: getHorizontalSize(17),
      ),
      // child: const ToggleActiveArchive(),
      child: child,
    ),
  );
}