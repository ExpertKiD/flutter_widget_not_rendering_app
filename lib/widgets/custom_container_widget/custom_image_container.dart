import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ukpa_prms_mobile_app/constants/image_constant.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';

Widget getDocumentImageContainer({
  required String imageName,
  Map<String, String>? httpHeaders,
}) {
  return Container(
    height: getVerticalSize(200),
    width: getHorizontalSize(165),
    margin: getMargin(right: getHorizontalSize(10)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        getVerticalSize(8),
      ),
      border: Border.fromBorderSide(
        BorderSide(
          color: ColorsConstant.primaryBlue,
          width: getHorizontalSize(1),
        ),
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(getVerticalSize(8)),
      child: CachedNetworkImage(
        imageUrl: imageName,
        httpHeaders: httpHeaders,
        placeholder: (context, url) {
          return Center(
            child: Image.asset(
              ImageConstant.iconDocument,
              color: ColorsConstant.primaryBlue,
              height: getVerticalSize(40),
              width: getHorizontalSize(40),
              fit: BoxFit.fill,
            ),
          );
        },
        errorWidget: (context, url, error) {
          return Center(
            child: Image.asset(
              ImageConstant.iconDocument,
              color: ColorsConstant.primaryBlue,
              height: getVerticalSize(40),
              width: getHorizontalSize(40),
              fit: BoxFit.fill,
            ),
          );
        },
        height: getVerticalSize(200),
        width: getHorizontalSize(165),
        fit: BoxFit.fill,
      ),
    ),
  );
}
