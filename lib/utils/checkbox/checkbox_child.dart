import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';

Widget buildCheckBox(bool value, Function(dynamic value) onChanged) {
  return Checkbox(
    value: value,
    onChanged: onChanged,
    shape: const CircleBorder(),
    checkColor: ColorsConstant.white,
    activeColor: ColorsConstant.lightGreen,
  );
}
