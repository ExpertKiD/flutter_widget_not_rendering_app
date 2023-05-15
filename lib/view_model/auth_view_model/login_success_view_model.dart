import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/constants/api_constant.dart';
import '../../models/auth/auth_models/login_response_model.dart';

class LoginSuccessViewModel with ChangeNotifier {
  Future<bool> saveRefreshToken(LoginResponseModel success) async {
    final sp = await SharedPreferences.getInstance();
    final successToken =
        sp.setString(TokenType.refreshToken, success.refreshToken.toString());
    notifyListeners();
    // print('Success token: ${successToken.toString()}');
    return successToken;
  }

  Future<LoginResponseModel> getRefreshToken() async {
    final sp = await SharedPreferences.getInstance();
    final token = sp.getString(TokenType.refreshToken);
    // print('Get token: ${token.toString()}');

    return LoginResponseModel(refreshToken: token);
  }

  getStringToken() async {
    final sp = await SharedPreferences.getInstance();
    final token = sp.getString(TokenType.refreshToken);
    return token;
  }

  Future<bool> removeRefreshToken() async {
    final sp = await SharedPreferences.getInstance();
    sp.setString(TokenType.refreshToken, '');
    return true;
  }
}
