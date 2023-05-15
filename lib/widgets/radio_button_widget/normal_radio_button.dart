import 'package:flutter/material.dart';
import '/constants/colors_constant.dart';
import '/constants/styles_constant.dart';

class CustomRadioButtonInRow extends StatefulWidget {
  const CustomRadioButtonInRow({
    required this.listOfRadio,
    required this.listOfRadioText,
    // required this.function,
    required this.selectedValue,
    required this.onChanged,
    super.key,
  });

  final List<Enum> listOfRadio;
  final List<String> listOfRadioText;
  // final Function(Enum) function;
  final Enum selectedValue;
  final void Function(Enum?)? onChanged;

  @override
  State<CustomRadioButtonInRow> createState() => _CustomRadioButtonInRowState();
}

class _CustomRadioButtonInRowState extends State<CustomRadioButtonInRow> {
  // late Enum selectedValue;

  @override
  void initState() {
    super.initState();
    widget.selectedValue;
    // selectedValue = widget.listOfRadio[0];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < widget.listOfRadio.length; i++)
          Row(
            children: [
              getRadio(widget.listOfRadio[i], ColorsConstant.lightGrey),
              Text(
                widget.listOfRadioText[i],
                style: getTextLight14(),
              ),
            ],
          ),
      ],
    );
  }

  Widget getRadio(Enum value, Color color) {
    return Radio<Enum>(
      value: value,
      groupValue: widget.selectedValue,
      activeColor: ColorsConstant.primaryBlue,
      // fillColor: MaterialStateColor.resolveWith((states) => color),
      // onChanged: (value) {
      //   setState(() {
      //     selectedValue = value!;
      //   });
      //   widget.function(selectedValue);
      // },
      onChanged: widget.onChanged,
    );
  }
}

//radio button in column
class CustomRadioButtonInColumn extends StatefulWidget {
  const CustomRadioButtonInColumn(
      {required this.listOfRadio,
      required this.selectedValue,
      required this.function,
      super.key});

  final List<String> listOfRadio;
  final String selectedValue;
  final Function(String) function;

  @override
  State<CustomRadioButtonInColumn> createState() =>
      _CustomRadioButtonInColumnState();
}

class _CustomRadioButtonInColumnState extends State<CustomRadioButtonInColumn> {
  late String _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < widget.listOfRadio.length; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              getRadio(widget.listOfRadio[i], ColorsConstant.lightGrey),
              Text(
                widget.listOfRadio[i],
                style: getTextLight14(),
              ),
            ],
          ),
      ],
    );
  }

  Widget getRadio(String value, Color color) {
    return Radio<String>(
      value: value,
      groupValue: _selectedValue,
      activeColor: ColorsConstant.primaryBlue,
      // fillColor: MaterialStateColor.resolveWith((states) => color),
      onChanged: (value) {
        setState(() {
          _selectedValue = value.toString();
        });
        widget.function(_selectedValue);
      },
    );
  }
}

//tax radio button
class TaxRadioButton extends StatefulWidget {
  const TaxRadioButton({
    // required this.function,
    required this.onChanged,
    required this.listOfTaxValue,
    required this.listOfTaxTypeText,
    required this.selectedValue,
    super.key,
  });

  // final Function(Enum) function;
  final void Function(Enum?)? onChanged;
  final List<Enum> listOfTaxValue;
  final List<String> listOfTaxTypeText;
  final Enum selectedValue;

  @override
  State<TaxRadioButton> createState() => _TaxRadioButtonState();
}

class _TaxRadioButtonState extends State<TaxRadioButton> {
  // List<String> listOfTaxValue = [
  //   'Exempted',
  //   'Tax Exclusive',
  //   'Tax Inclusive',
  // ];

  @override
  void initState() {
    // widget.listOfTaxValue[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomRadioButtonInRow(
      listOfRadio: widget.listOfTaxValue,
      listOfRadioText: widget.listOfTaxTypeText,
      // onChanged: widget.function,
      onChanged: widget.onChanged,
      selectedValue: widget.selectedValue,
    );
  }
}

//Email Reminder radio button
class EmailReminderRadioButton extends StatelessWidget {
  EmailReminderRadioButton({required this.function, super.key});

  final Function(String) function;

  List<String> listOfEmailReminderValue = [
    'You',
    'You and client\'s contents',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomRadioButtonInColumn(
      selectedValue: listOfEmailReminderValue[1],
      listOfRadio: listOfEmailReminderValue,
      function: function,
    );
  }
}

//late fees radio button
class LateFeesRadioButton extends StatelessWidget {
  LateFeesRadioButton({required this.function, super.key});

  final Function(String) function;

  List<String> listOfLateFeesValue = [
    'Use the property late fee policy.',
    'Use a custom late fee policy.',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomRadioButtonInColumn(
      selectedValue: listOfLateFeesValue[1],
      listOfRadio: listOfLateFeesValue,
      function: function,
    );
  }
}

//charge fees radio button
class LateChargeFeesRadioButton extends StatelessWidget {
  LateChargeFeesRadioButton({required this.function, super.key});

  final Function(String) function;

  List<String> listOfChargeFeesValue = [
    'Fixed Amount',
    '% of Balance',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomRadioButtonInColumn(
      selectedValue: listOfChargeFeesValue[0],
      listOfRadio: listOfChargeFeesValue,
      function: function,
    );
  }
}
