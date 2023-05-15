import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/constants/colors_constant.dart';
import '/constants/image_constant.dart';
import '/constants/styles_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/divider/custom_divider.dart';

class CustomExpandableListTile extends StatefulWidget {
  CustomExpandableListTile(
      {required this.tileTitle,
      required this.widget,
      required this.isExpanded,
      super.key});

  final String tileTitle;
  Widget widget;
  bool isExpanded;

  @override
  State<CustomExpandableListTile> createState() =>
      _CustomExpandableListTileState();
}

class _CustomExpandableListTileState extends State<CustomExpandableListTile> {
  // late bool _isExpanded;

  @override
  void initState() {
    // _isExpanded = widget.isExpanded;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(
              widget.tileTitle,
              style: getTextBold16(),
            ),
            trailing: widget.isExpanded
                ? SvgPicture.asset(
                    ImageConstant.iconRemove,
                    height: getVerticalSize(2),
                    width: getHorizontalSize(14),
                  )
                : SvgPicture.asset(
                    ImageConstant.iconPlus,
                    height: getVerticalSize(14),
                    width: getHorizontalSize(14),
                  ),
            backgroundColor: ColorsConstant.lightGrey,
            tilePadding: getPadding(
              top: getVerticalSize(0),
              bottom: getVerticalSize(0),
              left: getHorizontalSize(15),
              right: getHorizontalSize(15),
            ),
            childrenPadding: getPadding(
              top: getVerticalSize(8),
              bottom: getVerticalSize(24),
            ),
            initiallyExpanded: widget.isExpanded,
            onExpansionChanged: (bool expanded) {
              setState(() {
                widget.isExpanded = expanded;
              });
              
            },
            children: [
              
              widget.widget,
            ],
          ),
        ),
        Container(
          transform: Matrix4.translationValues(
            getVerticalSize(0),
            getVerticalSize(8),
            getVerticalSize(0),
          ),
          child: widget.isExpanded ? getDivider() : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
