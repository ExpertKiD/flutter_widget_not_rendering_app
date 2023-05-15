import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ukpa_prms_mobile_app/utils/validation_utils/validation_mixin.dart';
import '/constants/strings_constant.dart';
import '/utils/tetform_field_utils/textform_field.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/dimension/sized_box_config.dart';
import '/utils/text_utils.dart/text_title.dart';

getShortContainer(
  BuildContext context, {
  required String title,
  required String value,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      setFormTitleWithStar(context, textTitle: title),
      getHeight17,
      Container(
        height: getVerticalSize(48),
        width: getHorizontalSize(165),
        padding: getPadding(
            top: getVerticalSize(14),
            bottom: getVerticalSize(14),
            left: getHorizontalSize(32)),
        decoration: BoxDecoration(
          border: Border.all(
            width: getHorizontalSize(1),
            color: ColorsConstant.grey,
          ),
          borderRadius: BorderRadius.circular(
            getVerticalSize(24),
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            value,
            style: getTextLight14(),
          ),
        ),
      ),
    ],
  );
}

getShortDropDownContainer(
  BuildContext context, {
  required String title,
  required Widget widget,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      setFormTitle(context, textTitle: title),
      getHeight17,
      widget,
    ],
  );
}

getShortDropDownContainerWithStar(
  BuildContext context, {
  required String title,
  required Widget widget,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      setFormTitleWithStar(context, textTitle: title),
      getHeight17,
      widget,
    ],
  );
}

getShortTextField(
  BuildContext context, {
  required String fieldTitle,
  TextInputAction? textInputAction,
  required String hintText,
  TextEditingController? controller,
  bool? filled,
  Color? fillColor,
  BorderSide? borderSide,
  TextInputType? textInputType,
  List<TextInputFormatter>? inputFormatters,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      setFormTitle(context, textTitle: fieldTitle),
      getHeight17,
      CustomTextField(
        width: getHorizontalSize(165),
        textInputType: textInputType ?? TextInputType.text,
        textInputAction: textInputAction ?? TextInputAction.next,
        controller: controller,
        hintText: hintText,
        borderSide: borderSide,
        filled: filled,
        fillColor: fillColor,
        inputFormatters: inputFormatters,
        validator: (value) => ValidationMixin().validate(value!, 'required'),
      ),
    ],
  );
}

getShortTextFieldWithStar(
  BuildContext context, {
  required String fieldTitle,
  TextInputAction? textInputAction,
  required String hintText,
  TextEditingController? controller,
  bool? filled,
  Color? fillColor,
  BorderSide? borderSide,
  TextInputType? textInputType,
  List<TextInputFormatter>? inputFormatters,
  String? Function(String?)? validator,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      setFormTitleWithStar(context, textTitle: fieldTitle),
      getHeight17,
      CustomTextField(
        width: getHorizontalSize(165),
        textInputType: textInputType ?? TextInputType.text,
        textInputAction: textInputAction ?? TextInputAction.next,
        controller: controller,
        hintText: hintText,
        borderSide: borderSide,
        filled: filled,
        fillColor: fillColor,
        inputFormatters: inputFormatters,
        validator: validator,
      ),
    ],
  );
}
