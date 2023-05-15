import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:ukpa_prms_mobile_app/constants/styles_constant.dart';
import 'package:ukpa_prms_mobile_app/constants/theme_constant.dart';
import 'package:ukpa_prms_mobile_app/models/auth/auth_models/login_request_model.dart';

import 'package:ukpa_prms_mobile_app/widgets/custom_alert_dialog_widget/custom_alert_dialog.dart';

import '../../../constants/routes_constant.dart';
import '/constants/strings_constant.dart';
import '/utils/dimension/sized_box_config.dart';
import '/utils/elevated_button_utils/elevated_button.dart';
import '/utils/tetform_field_utils/all_input_field.dart';
import '/view_model/auth_view_model/auth_view_model.dart';
import '../../../utils/icon_utils/get_icon.dart';
import '../../../utils/text_utils.dart/text_title.dart';
import '/constants/colors_constant.dart';
import '/constants/fonts_constant.dart';
import '/constants/image_constant.dart';
import '/utils/dimension/math_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isChecked = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void clearTextField() {
    _emailController.clear();
    _passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context);
    _emailController.text = 'john.doe@email.com';
    _passwordController.text = 'pass123';
    return WillPopScope(
      onWillPop: () async => await CustomAlertDialog().exitDialog(context),
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getHorizontalSize(16),
                vertical: getVerticalSize(24)),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  setAppTitle(context, textTitle: AppStrings.signIn),
                  getHeight16,
                  setSubTitle(context,
                      textTitle: AppStrings.buildingRelationship),
                  getHeight24,
                  setFormTitle(context, textTitle: AppStrings.letsBegin),
                  getHeight24,
                  Row(
                    children: [
                      Expanded(
                          child: ElevatedButtonWidget(
                        bgColor: ColorsConstant.fbColor,
                        title: AppStrings.facebook,
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          ImageConstant.iconFeatherFacebook,
                          width: getHorizontalSize(20),
                          height: getVerticalSize(20),
                          color: ColorsConstant.white,
                        ),
                      )),
                      getWidth24,
                      Expanded(
                          child: ElevatedButtonWidget(
                              onPressed: () {},
                              title: AppStrings.google,
                              bgColor: ColorsConstant.lightRed,
                              icon: SvgPicture.asset(ImageConstant.iconGoogle,
                                  width: getHorizontalSize(20),
                                  height: getVerticalSize(20),
                                  color: ColorsConstant.white)))
                    ],
                  ),
                  getHeight30,
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: ColorsConstant.grey,
                          thickness: getVerticalSize(1.5),
                        ),
                      ),
                      getWidth24,
                      setFormTitle(context, textTitle: AppStrings.oR),
                      getWidth24,
                      Expanded(
                          child: Divider(
                        color: ColorsConstant.grey,
                        thickness: getVerticalSize(1.5),
                      )),
                    ],
                  ),
                  getHeight30,
                  setFormTitle(context, textTitle: AppStrings.email),
                  getHeight17,
                  AllInputField().getEmailTextField(
                    emailController: _emailController,
                  ),
                  getHeight24,
                  setFormTitle(context, textTitle: AppStrings.password),
                  getHeight17,
                  PasswordTextField(
                    isObscure: true,
                    controller: _passwordController,
                    onFieldSubmitted: (_) => _onSubmit(authViewModel),
                  ),
                  getHeight24,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        child: isChecked
                            ? getIconCheckCircle()
                            : getIconCheckOutline(),
                      ),
                      //
                      Text(
                        AppStrings.rememberMe,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      getWidth83,
                      InkWell(
                        onTap: () {
                          // Navigator.pushNamed(
                          //     context, Routes.forgotpasswordRoute);
                        },
                        child: Text(
                          AppStrings.forgotPassword,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: ColorsConstant.primaryBlue,
                              fontWeight: FontWeightConstant.bold),
                        ),
                      ),
                    ],
                  ),
                  getHeight34,
                  CustomElevatedButton(
                    title: AppStrings.signIn,
                    isLoading: authViewModel.loading,
                    onPressed: authViewModel.loading
                        ? null
                        : () async {
                            FocusScope.of(context).unfocus();
                            _onSubmit(authViewModel);
                          },
                  ),
                  getHeight24,
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, Routes.signupRoute);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: AppStrings.dontHaveAccount,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          const WidgetSpan(child: SizedBox(width: 5)),
                          TextSpan(
                            text: AppStrings.signUp,
                            style: TextStyle(
                                fontWeight: FontWeightConstant.bold,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }

  void _onSubmit(AuthViewModel authViewModel) {
    if (_formKey.currentState!.validate()) {
      final loginData = LoginRequestModel(
          email: _emailController.text, password: _passwordController.text);
      authViewModel.loginApi(loginData, context);
    }
    clearTextField();
  }
}
