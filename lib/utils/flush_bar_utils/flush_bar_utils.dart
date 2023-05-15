import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

class FlushBarUtils {
  static void flushBarErrorMessage(BuildContext context,
      {required String? message, Color? backgroundColor}) {
    showFlushbar(
      context: context,
      flushbar: Flushbar(
        message: message ?? '',
        forwardAnimationCurve: Curves.decelerate,
        margin: EdgeInsets.symmetric(
          horizontal: getHorizontalSize(20),
          vertical: getVerticalSize(20),
        ),
        padding: EdgeInsets.all(
          getVerticalSize(15),
        ),
        duration: const Duration(milliseconds: 1200),
        borderRadius: BorderRadius.circular(
          getVerticalSize(8),
        ),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: backgroundColor ?? ColorsConstant.red,
        reverseAnimationCurve: Curves.easeInOut,
        positionOffset: 20,
      )..show(context),
    );
  }
}
