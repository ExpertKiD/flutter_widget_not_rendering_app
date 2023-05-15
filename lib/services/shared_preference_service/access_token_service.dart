import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '/constants/api_constant.dart';
import '../../models/auth/auth_models/tenant_specific_space_model.dart';

class AccessTokenServiceProvider extends ChangeNotifier {
  Future<bool> saveAccessToken(TenantSpecificSpaceModel accessModel) async {
    final sp = await SharedPreferences.getInstance();
    final accessToken =
        sp.setString(TokenType.accessToken, accessModel.accessToken.toString());
    notifyListeners();
    // print('Success token: ${accessToken.toString()}');
    return accessToken;
  }

  Future<TenantSpecificSpaceModel> getAccessToken() async {
    final sp = await SharedPreferences.getInstance();
    final token = sp.getString(TokenType.accessToken);
    notifyListeners();
    // print('Get token: ${token.toString()}');

    return TenantSpecificSpaceModel(accessToken: token);
  }

  Future<bool> removeAccessToken() async {
    final sp = await SharedPreferences.getInstance();
    sp.setString(TokenType.accessToken, "");
    notifyListeners();
    return true;
  }

  Future<bool> saveRefreshToken(TenantSpecificSpaceModel accessModel) async {
    final sp = await SharedPreferences.getInstance();
    final refreshToken = sp.setString(
        TokenType.refreshToken, accessModel.refreshToken.toString());
    notifyListeners();
    // print('Success token: ${accessToken.toString()}');
    return refreshToken;
  }

  Future<TenantSpecificSpaceModel> getRefreshToken() async {
    print("getting ready for shared pref");
    final sp = await SharedPreferences.getInstance();
    print(sp.toString());
    final token = sp.getString(TokenType.refreshToken) ?? '';
    final accessToken = sp.getString(TokenType.accessToken) ?? '';
    print(token + accessToken);
    notifyListeners();
    // print('Get token: ${token.toString()}');

    return TenantSpecificSpaceModel(
        refreshToken: token, accessToken: accessToken);
  }

  Future<bool> removeRefreshToken() async {
    final sp = await SharedPreferences.getInstance();
    sp.setString(TokenType.refreshToken, "");
    notifyListeners();
    return true;
  }
}
