import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ukpa_prms_mobile_app/utils/validation_utils/validation_mixin.dart';
import '/constants/colors_constant.dart';

class RoundeTextField extends StatefulWidget {
  const RoundeTextField({
    super.key,
    required this.controller,
    this.onFieldSubmitted,
    this.onChanged,
    //this.color,
  });

  final TextEditingController controller;
  final void Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  //final Color? color;
  @override
  State<RoundeTextField> createState() => _RoundeTextFieldState();
}

class _RoundeTextFieldState extends State<RoundeTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: ColorsConstant.grey, width: 1)),
      child: TextFormField(
        cursorColor: ColorsConstant.primaryBlue,
        onChanged: widget.onChanged ??
            (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
        controller: widget.controller,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(1)
        ],
        textAlign: TextAlign.center,
        decoration: const InputDecoration(border: InputBorder.none),
        onFieldSubmitted: widget.onFieldSubmitted,
      ),
    );
  }
}

Widget roundTextField1({
  required TextEditingController controller1,
}) {
  return RoundeTextField(
    controller: controller1,
  );
}

Widget roundTextField2({
  required TextEditingController controller2,
}) {
  return RoundeTextField(
    controller: controller2,
  );
}

Widget roundTextField3({
  required TextEditingController controller3,
}) {
  return RoundeTextField(
    controller: controller3,
  );
}

Widget roundTextField4({
  required TextEditingController controller4,
}) {
  return RoundeTextField(
    controller: controller4,
  );
}

Widget roundTextField5({
  required TextEditingController controller5,
}) {
  return RoundeTextField(
    controller: controller5,
  );
}

Widget roundTextField6({
  required TextEditingController controller6,
  void Function(String)? onFieldSubmitted,
  void Function(String)? onChanged,
  //Color? color,
}) {
  return RoundeTextField(
    controller: controller6,
    onChanged: onChanged,
    //color: color,
  );
}
