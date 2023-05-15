import 'package:flutter/material.dart';
import 'package:ukpa_prms_mobile_app/utils/dimension/math_utils.dart';

getCircularProgressIndicator({double? height, double? width}) {
  return Center(
    child: Padding(
      padding: getPadding(
        all: getVerticalSize(8),
      ),
      child: SizedBox(
        height: height ?? getVerticalSize(24),
        width: width ?? getHorizontalSize(24),
        child: const CircularProgressIndicator.adaptive(),
      ),
    ),
  );
}
