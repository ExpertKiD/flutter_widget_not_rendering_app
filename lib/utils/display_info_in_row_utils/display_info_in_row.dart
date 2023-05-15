import 'package:flutter/material.dart';
import '/utils/dimension/sized_box_config.dart';
import '/widgets/expandable_text_widget/expandable_text_widget.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/divider/custom_divider.dart';

class DisplayInfoInRow {
  Widget displayInfo({required String fieldName, required String fieldValue}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(20),
          width: getHorizontalSize(143),
          child: Text(
            fieldName,
            style: getTextLight14(color: ColorsConstant.grey),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fieldValue,
                style: getTextMedium14(),
                textAlign: TextAlign.justify,
              ),
              getDivider(),
            ],
          ),
        ),
      ],
    );
  }

  Widget displayOwnerInfo(
      {required String fieldName, required String fieldValue}) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(20),
          width: getHorizontalSize(143),
          child: Text(fieldName, style: getSubTitle2()),
        ),
        getHeight17,
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fieldValue,
              style: getTextMedium14(),
              textAlign: TextAlign.justify,
            ),
            getDivider(),
          ],
        ),
      ],
    );
  }

  Widget displayReadMoreInfo({
    required String fieldName,
    required String fieldValue,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(20),
          width: getHorizontalSize(143),
          child: Text(
            fieldName,
            style: getTextLight14(color: ColorsConstant.grey),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExpandableTextWidget(
                text: fieldValue,
              ),
              getDivider(),
            ],
          ),
        ),
      ],
    );
  }

  Widget displaySingleField({
    required String fieldName,
    required String fieldValue,
  }) {
    return Row(
      children: [
        Text(
          '$fieldName:',
          style: getTextMedium14(),
        ),
        getWidth4,
        Text(
          fieldValue,
          style: getTextLight14(),
        ),
      ],
    );
  }
}
