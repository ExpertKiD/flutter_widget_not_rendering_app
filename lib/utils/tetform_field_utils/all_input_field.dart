import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/constants/colors_constant.dart';
import '/constants/strings_constant.dart';
import '/utils/dimension/math_utils.dart';
import '/utils/dimension/sized_box_config.dart';
import '/utils/tetform_field_utils/textform_field.dart';
import '/utils/text_utils.dart/text_title.dart';
import '/utils/validation_utils/validation_mixin.dart';

import 'package:flutter_svg/svg.dart';
import '/constants/colors_constant.dart';
import '/constants/strings_constant.dart';
import '/utils/dimension/math_utils.dart';

import '/utils/tetform_field_utils/textform_field.dart';

import '/utils/validation_utils/validation_mixin.dart';

import '../../constants/image_constant.dart';
import '../../constants/styles_constant.dart';

class AllInputField {
  //for text form field

  Widget getNameTextField({
    required String hintText,
    TextEditingController? controller,
    String? title,
  }) {
    return CustomTextField(
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      controller: controller,
      hintText: hintText,
      validator: (value) => ValidationMixin().validate(value!, title ?? ''),
    );
  }

  //for text
  Widget getTextField({
    required String hintText,
    TextEditingController? controller,
    TextInputAction? textInputAction,
    String? title,
    bool readOnly = false,
  }) {
    return CustomTextField(
      readOnly: readOnly,
      textInputType: TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.next,
      controller: controller,
      hintText: hintText,
      validator: (value) => ValidationMixin().validate(value!, title ?? ''),
    );
  }

  Widget getEmailTextField({
    TextEditingController? emailController,
    TextInputAction? textInputAction,
    Function(String)? onFieldSubmitted,

    // bool? readOnly,
  }) {
    return CustomTextField(
      textInputType: TextInputType.emailAddress,
      textInputAction: textInputAction ?? TextInputAction.next,
      controller: emailController,
      hintText: AppStrings.email,
      onFieldSubmitted: onFieldSubmitted,
      validator: (value) {
        if (value!.isEmpty) {
          return "* required";
        } else if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return "Please enter a Valid email";
        }
      },
    );
  }

  Widget getPhoneTextField({TextEditingController? phoneController}) {
    return CustomTextField(
      textInputType: TextInputType.number,
      textInputAction: TextInputAction.next,
      controller: phoneController,
      hintText: AppStrings.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10)
      ],
      validator: (value) {
        if (value!.isEmpty) {
          return "* required";
        } else if (!RegExp(
                r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
            .hasMatch(value)) {
          return "Please Enter a Valid Phone Number";
        }
      },
    );
  }

  Widget getCompanyRegNumTextField({
    TextEditingController? comRegNumController,
  }) {
    return CustomTextField(
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      controller: comRegNumController,
      hintText: AppStrings.companyRegNumber,
      //validator: (value) => ValidationMixin().validate(value!, "CRN"),
    );
  }

  Widget getCompanyNameTextField({
    TextEditingController? comNameController,
  }) {
    return CustomTextField(
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      controller: comNameController,
      hintText: AppStrings.companyName,
      //validator: (value) => ValidationMixin().validate(value!, "CRN"),
    );
  }

  Widget getAddressTextField({
    String? hintText,
    TextEditingController? addressController,
    String? title,
  }) {
    return CustomTextField(
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      controller: addressController,
      hintText: hintText ?? AppStrings.address1,
      validator: (value) =>
          ValidationMixin().validate(value!, title ?? 'address'),
    );
  }

  Widget getCityTextField({
    TextEditingController? cityController,
  }) {
    return CustomTextField(
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      controller: cityController,
      hintText: AppStrings.townCity,
      validator: (value) => ValidationMixin().validate(value!, 'city'),
    );
  }

  Widget getPostCodeTextField({
    TextEditingController? postCodeController,
  }) {
    return CustomTextField(
      textInputType: TextInputType.text,
      textInputAction: TextInputAction.next,
      controller: postCodeController,
      hintText: AppStrings.zipPostCode,
      validator: (value) => ValidationMixin().validate(value!, 'postal code'),
    );
  }

  Widget getPanVatTextField({
    TextEditingController? panController,
  }) {
    return CustomTextField(
      textInputType: TextInputType.number,
      textInputAction: TextInputAction.next,
      controller: panController,
      hintText: AppStrings.panVatNumber,
      //validator: (value) => ValidationMixin().validate(value!, "pan vat"),
    );
  }

  Widget getPriceTextField({
    TextEditingController? priceController,
    TextInputAction? textInputAction,
    required String hintText,
    bool? filled,
    Color? fillColor,
    BorderSide? borderSide,
    String? title,
  }) {
    return CustomTextField(
      textInputType: const TextInputType.numberWithOptions(decimal: true),
      textInputAction: textInputAction ?? TextInputAction.next,
      controller: priceController,
      hintText: hintText,
      borderSide: borderSide,
      filled: filled,
      fillColor: fillColor,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
      validator: (value) => ValidationMixin().validate(value!, title!),
    );
  }

  //without border side
  Widget getPriceTextFieldWithoutBorderSide({
    TextEditingController? priceController,
    TextInputAction? textInputAction,
    required String hintText,
    bool? filled,
    Color? fillColor,
    BorderSide? borderSide,
  }) {
    return CustomTextField(
      textInputType: TextInputType.number,
      textInputAction: textInputAction ?? TextInputAction.next,
      controller: priceController,
      hintText: hintText,
      borderSide: borderSide ?? BorderSide.none,
      filled: filled ?? true,
      fillColor: fillColor ?? ColorsConstant.white,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
      ],
      validator: (value) => ValidationMixin().validate(value!, 'required'),
    );
  }

  //short text field

  Widget getShortTextField({
    TextInputAction? textInputAction,
    required String hintText,
    TextEditingController? controller,
    bool? filled,
    Color? fillColor,
    BorderSide? borderSide,
    TextInputType? textInputType,
  }) {
    return CustomTextField(
      width: getHorizontalSize(165),
      textInputType: textInputType ?? TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.next,
      controller: controller,
      hintText: hintText,
      borderSide: borderSide,
      filled: filled,
      fillColor: fillColor,
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.isObscure = false,
    this.controller,
    this.onFieldSubmitted,
  });
  final bool isObscure;
  final TextEditingController? controller;
  final Function(String)? onFieldSubmitted;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  late bool _toHide;
  RegExp pass_valid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
  bool validatePassword(String pass) {
    String _password = pass.trim();
    if (pass_valid.hasMatch(_password)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    super.initState();
    _toHide = widget.isObscure;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getVerticalSize(24),
        ),
      ),
      child: TextFormField(
        //keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        controller: widget.controller,
        obscureText: _toHide,
        decoration: InputDecoration(
          hintText: AppStrings.password,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
              vertical: getVerticalSize(14), horizontal: getHorizontalSize(32)),
          hintStyle: getTextLight14(color: ColorsConstant.grey),
          suffixIconConstraints: BoxConstraints(maxHeight: getVerticalSize(20)),
          suffixIcon: widget.isObscure
              ? IconButton(
                  padding: getPadding(all: 0),
                  onPressed: () {
                    setState(() {
                      _toHide = !_toHide;
                    });
                  },
                  icon: _toHide
                      ? SvgPicture.asset(
                          ImageConstant.iconFeatherEyeOff,
                          height: getVerticalSize(18),
                          width: getVerticalSize(18),
                          color: ColorsConstant.grey,
                        )
                      : SvgPicture.asset(
                          ImageConstant.iconFeatherEye,
                          height: getVerticalSize(16),
                          width: getVerticalSize(16),
                          color: ColorsConstant.grey,
                        ),
                )
              : null,
          border: OutlineInputBorder(
            borderSide: BorderSide(
                width: getHorizontalSize(1), color: ColorsConstant.grey),
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onFieldSubmitted: widget.onFieldSubmitted,
        validator: (value) => ValidationMixin().validate(value!, 'password'),
        // validator: (value) {
        //   if (value!.isEmpty) {
        //     return "Please enter your password";
        //   } else {
        //     bool result = validatePassword(value);
        //     if (result) {
        //     } else {
        //       return "Must contain Capital, small letter, number & special ";
        //     }
        //   }
        // },
      ),
    );
  }
}
