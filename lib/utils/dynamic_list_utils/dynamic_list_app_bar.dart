import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/constants/strings_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/dimension/sized_box_config.dart';
import '/utils/display_info_in_row_utils/display_info_in_row.dart';
import '/utils/icon_utils/get_icon.dart';
import '/utils/sliver_app_bar_utils/custom_sliver_app_bar.dart';

buildDynamicListAppBar(
  BuildContext context, {
  required String appBarTitle,
  required String entitiesTitle,
  required String moduleName,
  required String subModuleName,
  String? entitiesOfName,
  required void Function()? onBackPressed,
}) {
  return CustomSliverAppBar(
    leading: getAppBarBackIcon(context, onPressed: onBackPressed),
    appBarTitle: appBarTitle,
    appBarTextStyle: getTextMedium16(),
    bottom: PreferredSize(
      preferredSize: Size(
        double.maxFinite,
        getVerticalSize(104),
      ),
      child: Container(
        color: ColorsConstant.lightGrey,
        height: getVerticalSize(104),
        width: double.maxFinite,
        child: Container(
          margin: getMargin(
            top: getVerticalSize(16),
          ),
          width: double.maxFinite,
          height: getVerticalSize(80),
          color: ColorsConstant.white,
          child: Column(
            children: [
              Padding(
                padding: getPadding(
                  top: getVerticalSize(16),
                  bottom: getVerticalSize(16),
                  left: getHorizontalSize(15),
                  right: getHorizontalSize(15),
                ),
                child: Row(
                  children: [
                    getMenuBarIcon(),
                    getWidth12,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${entitiesOfName ?? AppStrings.entitiesOf} ${AppStrings.doubleQuoteSign}',
                                style: getTextLight14(),
                              ),
                              Text(
                                // 'Units',
                                entitiesTitle,
                                style: getTextBold14(
                                    color: ColorsConstant.primaryBlue),
                              ),
                              const Text(AppStrings.doubleQuoteSign),
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  DisplayInfoInRow().displaySingleField(
                                      fieldName: AppStrings.module,
                                      fieldValue: moduleName),
                                  getWidth45,
                                  DisplayInfoInRow().displaySingleField(
                                    fieldName: AppStrings.sub,
                                    fieldValue: subModuleName,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
