import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

Widget buildDottedContainer({
  double? width,
  double? height,
  EdgeInsetsGeometry? padding,
  Color? borderColor,
  Color? backgroundColor,
  required Widget child,
}) {
  return Container(
    width: width ?? double.maxFinite,
    height: height,
    // height: height ?? getVerticalSize(225),
    padding: padding,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(
        getVerticalSize(16),
      ),
    ),
    child: DottedBorder(
      borderType: BorderType.RRect,
      dashPattern: const [5, 5],
      color: borderColor ?? ColorsConstant.grey,
      radius: Radius.circular(
        getVerticalSize(16),
      ),
      child: child,
      // child: Column(
      //   children: [
      //     const Center(
      //       child: Text('Upload Signature'),
      //     ),
      //   ],
      // ),
    ),
  );
}

Widget buildSignDottedContainer(
    {required String signImage, Map<String, String>? headers}) {
  return buildDottedContainer(
    child: Container(
      margin: getMargin(
        all: getVerticalSize(4),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getVerticalSize(16),
        ),
      ),
      child: Center(
        child: Image.network(
          signImage,
          headers: headers,
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
