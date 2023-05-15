import 'package:flutter/material.dart';
import 'package:ukpa_prms_mobile_app/utils/dimension/sized_box_config.dart';
import 'package:ukpa_prms_mobile_app/utils/elevated_button_utils/elevated_button.dart';
import 'package:ukpa_prms_mobile_app/widgets/button_widget/custom_button.dart';
import '/utils/dimension/math_utils.dart';
import '/widgets/button_widget/cancel_save_button_row.dart';

class CustomBottomAppBar {
  buildCancelOrSaveBottomAppBar(
    BuildContext context, {
    required void Function()? cancelPressed,
    required void Function()? savePressed,
    bool isLoading = false,
  }) {
    return BottomAppBar(
      child: buildCancelOrSaveButtonRow(
        leftPadding: getHorizontalSize(15),
        rightPadding: getHorizontalSize(15),
        isLoading: isLoading,
        cancelPressed: cancelPressed,
        savePressed: savePressed,
      ),
    );
  }

  buildAddOwnerBottomAppBar(
    BuildContext context, {
    required void Function() addPressed,
    required void Function() assignPressed,
    bool isLoading = false,
  }) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButtonWidget(
              title: "Add/Assign Owner",
              onPressed: addPressed,
              icon: const Icon(Icons.add),
            ),
            getHeight16,
            OutlineIconButton(
              title: "Assign Owner",
              onPressed: assignPressed,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
