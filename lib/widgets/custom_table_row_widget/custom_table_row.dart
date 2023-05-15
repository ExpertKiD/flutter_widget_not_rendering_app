import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';

class CustomTableRow {
  buildTableRow({required String title, required String value}) {
    return TableRow(
      children: [
        Text(
          title,
          textAlign: TextAlign.start,
          style: getTextLight14(color: ColorsConstant.grey),
        ),
        Text(
          value,
          textAlign: TextAlign.end,
          style: getTextMedium14(),
        ),
      ],
    );
  }

  buildTableSpacer() {
    return TableRow(
      children: [
        SizedBox(
          height: getVerticalSize(8),
        ),
        SizedBox(
          height: getVerticalSize(8),
        ),
      ],
    );
  }
}
