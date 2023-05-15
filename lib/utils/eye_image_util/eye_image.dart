import 'package:flutter/material.dart';

import '../../constants/colors_constant.dart';
import '../../constants/image_constant.dart';
import '../dimension/math_utils.dart';
import 'package:flutter_svg/svg.dart';

Widget eyeImageOff() {
  return SvgPicture.asset(
    ImageConstant.iconFeatherEyeOff,
    width: getHorizontalSize(20),
    height: getVerticalSize(20),
    color: ColorsConstant.grey,
    // fit: BoxFit.cover,
  );
}

Widget eyeImageOn() {
  return SvgPicture.asset(
    ImageConstant.iconFeatherEye,
    width: getHorizontalSize(16),
    height: getVerticalSize(16),
    color: ColorsConstant.grey,
    // fit: BoxFit.cover,
  );
}
