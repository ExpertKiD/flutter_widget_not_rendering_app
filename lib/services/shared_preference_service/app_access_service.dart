import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:ukpa_prms_mobile_app/models/auth/auth_models/tenant_specific_space_model.dart';
import '/services/shared_preference_service/access_token_service.dart';
import '/constants/routes_constant.dart';
import '../../models/auth/auth_models/login_response_model.dart';
import '/view_model/auth_view_model/login_success_view_model.dart';

class AppAccessService {
  final _appAccessService = AccessTokenServiceProvider();
  // Future<TenantSpecificSpaceModel> getRefreshTokenData() async =>
  //     await AccessTokenServiceProvider().getRefreshToken();

  // Future<TenantSpecificSpaceModel> getAccessTokenData() async =>
  //     await AccessTokenServiceProvider().getAccessToken();

  Future<bool> checkAuthentication(BuildContext context) async {
    // await _appAccessService.getRefreshToken().then((value) async {

    //       // print(
    //       //     'App Access Refresh Token: ${value.refreshToken.toString()}');
    //       // print(
    //       //     'App Access Access Token: ${value.accessToken.toString()}');

    //       if ((value.refreshToken == null ||
    //               value.refreshToken == '') ||
    //           (value.accessToken == null ||
    //               value.accessToken == '')) {
    //         await Future.delayed(
    //           const Duration(seconds: 1),
    //         ).then((value) =>
    //             Navigator.pushReplacementNamed(context, Routes.loginRoute));
    //       } else {
    //         await Future.delayed(
    //           const Duration(seconds: 1),
    //         ).then((value) =>
    //             Navigator.pushReplacementNamed(context, Routes.dashboardRoute));
    //       }

    // }).onError((error, stackTrace) {
    //   debugPrint(error.toString());
    // });

    try {
      final accessData = await _appAccessService.getRefreshToken();
      print('App Access Refresh Token: ${accessData.refreshToken.toString()}');
      print('App Access Access Token: ${accessData.accessToken.toString()}');
      if ((accessData.refreshToken == null || accessData.refreshToken == '') ||
          (accessData.accessToken == null || accessData.accessToken == '')) {
        return false;
        // Future.delayed(
        //   const Duration(seconds: 1),
        // ).then((value) =>
        //     Navigator.pushReplacementNamed(context, Routes.loginRoute));
      } else {
        return true;
        // Future.delayed(
        //   const Duration(seconds: 1),
        // ).then((value) =>
        //     Navigator.pushReplacementNamed(context, Routes.dashboardRoute));
      }
    } catch (error) {
      debugPrint(error.toString());
      return false;
    }
  }

  //for clear both refresh token and access token
  Future<bool> removeCache(BuildContext context) async {
    final loginPref =
        Provider.of<LoginSuccessViewModel>(context, listen: false);
    final accessPref =
        Provider.of<AccessTokenServiceProvider>(context, listen: false);
    final removeRefresh = await loginPref.removeRefreshToken();
    final removeAccess = await accessPref.removeAccessToken();
    if (removeAccess && removeRefresh) {
      return true;
    } else {
      return false;
    }
  }
}
