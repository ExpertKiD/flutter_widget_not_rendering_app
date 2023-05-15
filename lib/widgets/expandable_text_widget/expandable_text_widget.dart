import 'package:flutter/material.dart';
import '/constants/strings_constant.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';

class ExpandableTextWidget extends StatefulWidget {
  const ExpandableTextWidget({required this.text, super.key});

  final String text;

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;

  double textContentHeight = getVerticalSize(150);

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textContentHeight) {
      firstHalf = widget.text.substring( 
        0,
        textContentHeight.toInt(),
      );
      secondHalf = widget.text.substring(
        textContentHeight.toInt() + 1,
        widget.text.length,
      );
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? Text(
              firstHalf,
              style: getTextMedium14(),
              textAlign: TextAlign.justify,
            )
          : RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: hiddenText
                        ? ('$firstHalf...')
                        : (firstHalf + secondHalf),
                    style: getTextMedium14().copyWith(),
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.top,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          hiddenText = !hiddenText;
                        });
                      },
                      child: Padding(
                        padding: getPadding(
                          left: getHorizontalSize(4),
                        ),
                        child: Text(
                          hiddenText
                              ? AppStrings.readMore
                              : AppStrings.readLess,
                          style: getTextMedium14().copyWith(
                            color: ColorsConstant.ligthBlue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
