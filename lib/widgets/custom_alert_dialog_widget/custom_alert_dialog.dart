import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ukpa_prms_mobile_app/constants/colors_constant.dart';
import 'package:ukpa_prms_mobile_app/constants/styles_constant.dart';
import 'package:ukpa_prms_mobile_app/utils/dimension/math_utils.dart';
import 'package:ukpa_prms_mobile_app/utils/dimension/sized_box_config.dart';
import 'package:ukpa_prms_mobile_app/utils/divider/custom_divider.dart';
import 'package:ukpa_prms_mobile_app/view_model/auth_view_model/auth_view_model.dart';

class CustomAlertDialog {
  customAlertDialog(
    BuildContext context, {
    required String message,
    required void Function()? onYesPressed,
  }) async {
    final shouldPop = await showDialog<bool>(
        context: context,
        builder: (_) {
          return AlertDialog(
            contentPadding: getPadding(
              top: getVerticalSize(8),
              left: getHorizontalSize(15),
              right: getHorizontalSize(15),
            ),
            title: Align(
              alignment: Alignment.center,
              child: Text(
                'Logout',
                style: getTextBold16(color: ColorsConstant.primaryBlue),
              ),
            ),
            titlePadding: getPadding(
              top: getVerticalSize(24),
            ),
            actionsPadding: getPadding(all: getVerticalSize(0)),
            buttonPadding: getPadding(all: getVerticalSize(0)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                getDividerWithMiddleGrey(),
                getHeight12,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    message,
                    style: getTextMedium16(),
                  ),
                ),
                getHeight12,
                getDividerWithMiddleGrey(),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text(
                  'NO',
                  style: getTextBold14(
                    color: ColorsConstant.primaryBlue,
                  ),
                ),
              ),
              TextButton(
                onPressed: onYesPressed,
                child: Text(
                  'YES',
                  style: getTextBold14(
                    color: ColorsConstant.primaryBlue,
                  ),
                ),
              ),
            ],
          );
        });
    return shouldPop!;
  }

  logoutDialog(BuildContext context) {
    return customAlertDialog(context, message: 'Are you sure want to logout?',
        onYesPressed: () {
      Provider.of<AuthViewModel>(context, listen: false).logout(context);
      // Navigator.pop(context, true);
    });
  }

  exitDialog(BuildContext context) {
    return customAlertDialog(context, message: 'Are you sure want to exit?',
        onYesPressed: () {
      Navigator.pop(context, true);
    });
  }
}
