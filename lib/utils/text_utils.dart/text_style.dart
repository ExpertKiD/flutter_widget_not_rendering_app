import 'package:flutter/material.dart';
import '/constants/fonts_constant.dart';

appBarTextStyle16(BuildContext context) {
  return Theme.of(context).textTheme.subtitle1!.copyWith(
        fontWeight: FontWeightConstant.medium,
      );
}
