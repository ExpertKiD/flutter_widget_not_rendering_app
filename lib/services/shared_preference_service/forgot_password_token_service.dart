import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ukpa_prms_mobile_app/constants/api_constant.dart';
import 'package:ukpa_prms_mobile_app/models/auth/forgot_password_models/forgot_password_otp_validation_model.dart';
import 'package:ukpa_prms_mobile_app/models/auth/forgot_password_models/forgot_password_token_model.dart';

class ForgotPasswordTokenService with ChangeNotifier {
  Future<bool> saveForgotPasswordHashToken(
      ForgotPasswordOtpValidationModel otpValidationModel) async {
    final sp = await SharedPreferences.getInstance();
    final hashToken = sp.setString(
        TokenType.forgotPasswordHashToken, otpValidationModel.hash.toString());
    notifyListeners();
    return hashToken;
  }

  Future<ForgotPasswordOtpValidationModel> getForgotPasswordHashToken() async {
    final sp = await SharedPreferences.getInstance();
    final token = sp.getString(TokenType.forgotPasswordHashToken);
    return ForgotPasswordOtpValidationModel(hash: token!);
  }

  //for email

  Future<bool> saveEmail(ForgotPasswordOtpValidationModel otpValidationModel) async {
    final sp = await SharedPreferences.getInstance();
    final email =
        sp.setString(TokenType.email, otpValidationModel.email.toString());
    notifyListeners();
    return email;
  }

  Future<ForgotPasswordOtpValidationModel> getEmail() async {
    final sp = await SharedPreferences.getInstance();
    final email = sp.getString(TokenType.email);
    notifyListeners();
    final forgotPasswordHashTokenModel =
        ForgotPasswordOtpValidationModel(email: email);
    return forgotPasswordHashTokenModel;
  }

  Future<bool> saveForgotPasswordToken(
      ForgotPasswordTokenModel forgotPasswordTokenModel) async {
    final sp = await SharedPreferences.getInstance();
    final forgotToken = sp.setString(TokenType.forgotPasswordToken,
        forgotPasswordTokenModel.token.toString());
    notifyListeners();
    return forgotToken;
  }

  Future<ForgotPasswordTokenModel> getForgotPasswordToken() async {
    final sp = await SharedPreferences.getInstance();
    final forgotToken = sp.getString(TokenType.forgotPasswordToken);
    final forgotPasswordTokenModel =
        ForgotPasswordTokenModel(token: forgotToken!);
    return forgotPasswordTokenModel;
  }

  Future<bool> removeForgotPasswordHashToken() async {
    final sp = await SharedPreferences.getInstance();
    sp.remove(TokenType.forgotPasswordHashToken);
    return true;
  }

  Future<bool> removeEmail() async {
    final sp = await SharedPreferences.getInstance();
    sp.remove(TokenType.email);
    return true;
  }

  Future<bool> removeForgotPasswordToken() async {
    final sp = await SharedPreferences.getInstance();
    sp.remove(TokenType.forgotPasswordToken);
    return true;
  }
}
