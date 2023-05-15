import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ukpa_prms_mobile_app/core/constants/app_failure_messages.dart';
import 'package:ukpa_prms_mobile_app/core/exceptions/app_exceptions.dart';

import '../../../../constants/api_constant.dart';
import 'auth_local.dart';

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({
    required this.sharedPreferences,
  });

  @override
  Future<bool> isUserLoggedIn() async {
    try {
      final accessToken =
          sharedPreferences.getString(TokenType.accessToken) ?? '';
      final refreshToken =
          sharedPreferences.getString(TokenType.refreshToken) ?? '';

      bool isUserLoggedIn = accessToken.isNotEmpty && refreshToken.isNotEmpty;

      return isUserLoggedIn;
    } catch (e) {
      throw AppException.formatNotParsable(message: 'Not parsable.');
    }
  }
}
