import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/utils/dimension/math_utils.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomFlutterSwitch extends StatelessWidget {
  CustomFlutterSwitch({
    required this.isToggle,
    required this.onToggle,
    super.key,
  });

  
  final bool isToggle;
  Function(bool) onToggle;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: isToggle,
      onToggle: onToggle,
      width: getHorizontalSize(52),
      height: getVerticalSize(32),
      toggleSize: getVerticalSize(28),
      padding: getHorizontalSize(2),
      activeColor: ColorsConstant.green,
      inactiveColor: ColorsConstant.grey,
    );
  }
}
