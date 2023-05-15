import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../validation_utils/validation_mixin.dart';
import '/constants/styles_constant.dart';
import '/constants/image_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/constants/colors_constant.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    this.textInputType,
    this.textInputAction,
    this.controller,
    this.preffixicon,
    this.readOnly = false,
    this.validator,
    this.onFieldSubmitted,
    this.onTap,
    this.suffixIcon,
    this.maxLines = 1,
    this.height,
    this.filled,
    this.fillColor,
    this.borderSide,
    this.width,
    this.inputFormatters,
  });

  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;

  final String hintText;
  final Widget? preffixicon;

  bool readOnly = false;
  final String? Function(String?)? validator;
  final Function(String)? onFieldSubmitted;
  final void Function()? onTap;
  final Widget? suffixIcon;
  int? maxLines;
  double? height;
  bool? filled;
  Color? fillColor;
  BorderSide? borderSide;
  double? width;
  List<TextInputFormatter>? inputFormatters;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getVerticalSize(24),
        ),
      ),
      child: TextFormField(
        maxLines: widget.maxLines,
        keyboardType: widget.textInputType,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        readOnly: widget.readOnly,
        controller: widget.controller,
        style: Theme.of(context).textTheme.bodyText2,
        decoration: InputDecoration(
          isDense: true,
          hintText: widget.hintText,
          prefixIcon: widget.preffixicon,
          contentPadding: EdgeInsets.symmetric(
              vertical: getVerticalSize(14), horizontal: getHorizontalSize(32)),
          hintStyle: getTextLight14(color: ColorsConstant.grey),
          suffixIconConstraints: BoxConstraints(maxHeight: getVerticalSize(20)),
          errorStyle: TextStyle(
            color: ColorsConstant.red,
          ),
          border: OutlineInputBorder(
            borderSide: widget.borderSide ??
                BorderSide(
                    width: getHorizontalSize(1), color: ColorsConstant.grey),
            borderRadius: BorderRadius.circular(24),
          ),
          filled: widget.filled,
          fillColor: widget.fillColor,
        ),
        validator: widget.validator,
        onFieldSubmitted: widget.onFieldSubmitted,
        onTap: widget.onTap,
        inputFormatters: widget.inputFormatters,
      ),
    );
  }
}

class CustomDateTextField extends StatefulWidget {
  CustomDateTextField(
      {super.key,
      this.controller,
      this.width,
      this.initialValue,
      this.filled,
      this.fillColor,
      this.borderSide,
      this.onChanged,
      this.dateFormatStyle,
      this.title});

  TextEditingController? controller;
  double? width;
  String? initialValue;
  bool? filled;
  Color? fillColor;
  BorderSide? borderSide;
  String? title;
  String? dateFormatStyle;

  ValueChanged<DateTime?>? onChanged;

  @override
  State<CustomDateTextField> createState() => _CustomDateTextFieldState();
}

class _CustomDateTextFieldState extends State<CustomDateTextField> {
  void _getDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2025),
    ).then((pickedDate) {
      if (pickedDate != null) {
        String formattedDate =
            DateFormat(widget.dateFormatStyle ?? 'yyyy/MM/dd')
                .format(pickedDate);

        widget.onChanged?.call(pickedDate);

        setState(() {
          widget.controller!.text = formattedDate;
        });
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getVerticalSize(24),
        ),
      ),
      child: TextFormField(
        controller: widget.controller,
        initialValue: widget.initialValue,
        style: getTextLight14(),
        readOnly: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: widget.borderSide ??
                BorderSide(
                    width: getHorizontalSize(1), color: ColorsConstant.grey),
            borderRadius: BorderRadius.circular(24),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: widget.borderSide ??
                BorderSide(width: getHorizontalSize(1), color: Colors.red),
            borderRadius: BorderRadius.circular(24),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: widget.borderSide ??
                BorderSide(width: getHorizontalSize(1), color: Colors.red),
            borderRadius: BorderRadius.circular(24),
          ),
          filled: widget.filled,
          fillColor: widget.fillColor,
          contentPadding: EdgeInsets.symmetric(
              // vertical: getVerticalSize(14), horizontal: getHorizontalSize(32)),
              vertical: getVerticalSize(14),
              horizontal: getHorizontalSize(32)),
          hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: ColorsConstant.grey,
              ),
          hintText: "dd/mm/yy",
          prefixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: _getDate,
            icon: SvgPicture.asset(
              ImageConstant.iconFetherCalendar,
              width: getHorizontalSize(18),
              height: getVerticalSize(18),
            ),
          ),
        ),
        onTap: _getDate,
        validator: (value) => ValidationMixin().validate(value!, 'required'),
      ),
    );
  }
}

Widget getDescriptionContainer({
  TextInputAction? textInputAction,
  TextEditingController? controller,
  // String? Function(String?)? validator,
  Function(String)? onFieldSubmitted,
  String? Function(String?)? validator,
}) {
  return CustomTextField(
    height: getVerticalSize(144),
    textInputType: TextInputType.text,
    textInputAction: textInputAction ?? TextInputAction.next,
    controller: controller,
    // validator: (value) => ValidationMixin().validate(value!, 'required'),
    validator: validator,
    onFieldSubmitted: onFieldSubmitted,
    hintText: 'Type here...',
    maxLines: 10,
  );
}

Widget getDescriptionContainerWithoutBorder({
  TextInputAction? textInputAction,
  TextEditingController? controller,
  String? Function(String?)? validator,
  Function(String)? onFieldSubmitted,
}) {
  return CustomTextField(
    height: getVerticalSize(144),
    textInputType: TextInputType.text,
    textInputAction: textInputAction ?? TextInputAction.next,
    controller: controller,
    validator: validator,
    onFieldSubmitted: onFieldSubmitted,
    hintText: 'Type here...',
    maxLines: 10,
    filled: true,
    fillColor: ColorsConstant.white,
    borderSide: BorderSide.none,
  );
}

//custom time text field
class CustomTimeTextField extends StatefulWidget {
  CustomTimeTextField({
    super.key,
    this.controller,
    this.width,
    this.initialValue,
    this.filled,
    this.fillColor,
    this.borderSide,
  });

  TextEditingController? controller;
  double? width;
  String? initialValue;
  bool? filled;
  Color? fillColor;
  BorderSide? borderSide;

  @override
  State<CustomTimeTextField> createState() => _CustomTimeTextFieldState();
}

class _CustomTimeTextFieldState extends State<CustomTimeTextField> {
  TimeOfDay? _selectedTime;

  Future<void> _getTime() async {
    final TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, Widget? child) {
          return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
              child: child!);
        });
    if (time != null) {
      setState(() {
        _selectedTime = time;
      });

      DateTime parseDate = DateFormat('HH:mm')
          .parse('${_selectedTime!.hour}:${_selectedTime!.minute}');
      final dateFormat = DateFormat(
        'h:mm    |  a',
      );
      // print('Date format: ${dateFormat.format(parseDate)}');
      widget.controller!.text = dateFormat.format(parseDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getVerticalSize(24),
        ),
      ),
      height: getVerticalSize(48),
      child: TextFormField(
        controller: widget.controller,
        // initialValue: widget.initialValue,
        style: getTextLight14(),
        readOnly: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: widget.borderSide ??
                BorderSide(
                    width: getHorizontalSize(1), color: ColorsConstant.grey),
            borderRadius: BorderRadius.circular(24),
          ),
          filled: widget.filled,
          fillColor: widget.fillColor,
          contentPadding: EdgeInsets.symmetric(
              // vertical: getVerticalSize(14), horizontal: getHorizontalSize(32)),
              vertical: getVerticalSize(14),
              horizontal: getHorizontalSize(0)),
          hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: ColorsConstant.grey,
              ),
          hintText: "12:45 | AM",
          prefixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: _getTime,
            icon: SvgPicture.asset(
              ImageConstant.iconTimer,
              width: getHorizontalSize(18),
              height: getVerticalSize(18),
            ),
          ),
        ),
        onTap: _getTime,
      ),
    );
  }
}

//Custom Date Text Field without Border
class CustomDateTextFieldWithoutBorder extends StatefulWidget {
  CustomDateTextFieldWithoutBorder({
    super.key,
    this.controller,
    this.width,
    this.initialValue,
  });

  TextEditingController? controller;
  double? width;
  String? initialValue;

  @override
  State<CustomDateTextFieldWithoutBorder> createState() =>
      _CustomDateTextFieldWithoutBorderState();
}

class _CustomDateTextFieldWithoutBorderState
    extends State<CustomDateTextFieldWithoutBorder> {
  void _getDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2025),
    ).then((pickedDate) {
      if (pickedDate != null) {
        String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);

        setState(() {
          widget.controller!.text = formattedDate;
        });
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getVerticalSize(24),
        ),
      ),
      height: getVerticalSize(48),
      child: TextFormField(
        controller: widget.controller,
        initialValue: widget.initialValue,
        style: getTextLight14(),
        readOnly: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(24),
          ),
          filled: true,
          fillColor: ColorsConstant.white,
          contentPadding: EdgeInsets.symmetric(
              // vertical: getVerticalSize(14), horizontal: getHorizontalSize(32)),
              vertical: getVerticalSize(14),
              horizontal: getHorizontalSize(0)),
          hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                color: ColorsConstant.grey,
              ),
          hintText: "dd/mm/yy",
          prefixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: _getDate,
            icon: SvgPicture.asset(
              ImageConstant.iconFetherCalendar,
              width: getHorizontalSize(18),
              height: getVerticalSize(18),
            ),
          ),
        ),
        onTap: _getDate,
        validator: (value) => ValidationMixin().validate(value!, 'required'),
      ),
    );
  }
}
// TimeOfDay? pickedTime = await showTimePicker(
// builder: (context, Widget? child) {
//   return MediaQuery(
//     data: MediaQuery.of(context).copyWith(
//       alwaysUse24HourFormat: false,
//     ),
//     child: child!,
//   );
// },
//   initialTime: TimeOfDay.now(),
//   context: context,
// );

// if (pickedTime != null) {
//   print(pickedTime.format(context)); //output 10:51 PM
//   DateTime parsedTime =
//       DateFormat.jm().parse(pickedTime.format(context).toString());
//   //converting to DateTime so that we can further format on different pattern.
//   print(parsedTime); //output 1970-01-01 22:53:00.000
//   String formattedTime = DateFormat('h:mma').format(parsedTime);
//   print(formattedTime); //output 14:59:00
//   //DateFormat() is from intl package, you can format the time on any pattern you need.

//   setState(() {
//     widget.controller!.text = formattedTime; //set the value of text field.
//   });
// } else {
//   print("Time is not selected");
// }
