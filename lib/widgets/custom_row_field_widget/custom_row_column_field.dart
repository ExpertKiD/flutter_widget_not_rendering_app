import 'package:flutter/material.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/dimension/sized_box_config.dart';

Widget displaySingleColumnField({
  required String fieldTitle,
  required String fieldValue,
}) {
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldTitle,
          style: getTextLightGrey14(),
        ),
        getHeight4,
        Text(
          fieldValue,
          style: getTextMedium14(),
        ),
      ],
    ),
  );
}

Row displayFieldRowColumn({
  required String fieldTitle1,
  required String fieldValue1,
  final String? fieldTitle2,
  final String? fieldValue2,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        width: getHorizontalSize(188),
        height: getVerticalSize(44),
        child: displaySingleColumnField(
          fieldTitle: fieldTitle1,
          fieldValue: fieldValue1,
        ),
      ),
      Container(
        width: getHorizontalSize(170),
        height: getVerticalSize(44),
        child: displaySingleColumnField(
          fieldTitle: fieldTitle2 ?? '',
          fieldValue: fieldValue2 ?? '',
        ),
      ),
    ],
  );
}

Widget displaySingleRowField({
  required String rowFieldTitle,
  required String rowFieldValue,
  TextStyle? titleTextStyle,
  TextStyle? valueTextStyle,
  double? width,
}) {
  return Container(
    width: width ?? getHorizontalSize(170),
    padding: getPadding(
      right: getHorizontalSize(4),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$rowFieldTitle:',
          style: titleTextStyle ?? getTextMedium14(),
        ),
        getWidth4,
        Flexible(
          child: Text(
            rowFieldValue,
            style: valueTextStyle ?? getTextLightGrey14(),
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    ),
  );
}

Widget getContainerWidth({
  required Widget widget,
  double? width,
}) {
  return Container(
    width: width ?? getHorizontalSize(170),
    child: widget,
  );
}

Widget getContainerWidth170({required Widget widget}) {
  return Container(
    width: getHorizontalSize(170),
    child: widget,
  );
}

Widget displayRowData({required String title, required String value}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '$title:',
        style: getTextMedium14(),
      ),
      getWidth8,
      Text(
        value,
        style: getTextLight14(),
      ),
    ],
  );
}
