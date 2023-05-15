import 'package:flutter/material.dart';
import '/constants/strings_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/constants/colors_constant.dart';

Text setAppTitle(BuildContext context, {required String textTitle}) {
  return Text(
    textTitle,
    style: Theme.of(context).textTheme.headline5,
  );
}

Text setFormTitle(BuildContext context, {required String textTitle}) {
  print("Color for setFormTitle");
  print(Theme.of(context));

  return Text(
    textTitle,
    style: Theme.of(context).textTheme.subtitle2,
  );
}

Text setSubTitle(BuildContext context, {required String textTitle}) {
  return Text(
    textTitle,
    style: Theme.of(context).textTheme.bodyText2,
  );
}

Row setFormTitleWithStar(BuildContext context, {required String textTitle}) {
  return Row(
    children: [
      Text(
        textTitle,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      Text('*',
          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                color: ColorsConstant.red,
              )),
    ],
  );
}

Container getTitleInBody(
    {required String title,
    TextStyle? textStyle,
    EdgeInsetsGeometry? padding}) {
  return Container(
    padding: padding ??
        EdgeInsets.symmetric(
          vertical: getVerticalSize(24),
        ),
    child: Text(
      title,
      style: textStyle ?? getTextBold16(),
    ),
  );
}

Widget setBodyTitle({required String bodyTitle}) {
  return Padding(
    padding: getPadding(
      bottom: getVerticalSize(16),
    ),
    child: Text(
      bodyTitle,
      style: getTextLight14(),
    ),
  );
}
