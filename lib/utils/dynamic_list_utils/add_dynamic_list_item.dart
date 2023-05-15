import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/constants/strings_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/dimension/sized_box_config.dart';
import '/utils/tetform_field_utils/all_input_field.dart';
import '/utils/tetform_field_utils/textform_field.dart';
import '/utils/text_utils.dart/text_title.dart';

Widget addDynamicListItem(
  BuildContext context, {
  required TextEditingController titleController,
  required TextEditingController descriptionController,
}) {
  return SingleChildScrollView(
    child: Container(
      color: ColorsConstant.white,
      padding: getPadding(
        top: getVerticalSize(24),
        left: getHorizontalSize(15),
        right: getHorizontalSize(15),
      ),
      child: Column(
        children: [
          setFormTitleWithStar(context, textTitle: AppStrings.item),
          getHeight17,
          AllInputField().getTextField(
              hintText: AppStrings.egTitle, controller: titleController),
          getHeight24,
          setFormTitle(context, textTitle: AppStrings.description),
          getHeight17,
          getDescriptionContainer(controller: descriptionController),
        ],
      ),
    ),
  );
}
