import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/constants/colors_constant.dart';
import '/models/auth/auth_models/login_request_model.dart';
import '/models/auth/auth_models/signup_request_model.dart';
import '/services/shared_preference_service/access_token_service.dart';
import '/constants/routes_constant.dart';
import '/models/auth/auth_models/login_response_model.dart';
import '/repository/auth_repo/auth_repository.dart';
import '/utils/flush_bar_utils/flush_bar_utils.dart';
import '/view_model/auth_view_model/login_success_view_model.dart';

class AuthViewModel with ChangeNotifier {
  final _authRepo = AuthRepository();

  bool _loading = false;

  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> loginApi(
      LoginRequestModel loginRequestModel, BuildContext context) async {
    setLoading(true);
    await _authRepo.loginApi(loginRequestModel).then(
      (value) {
        final appAccessPreferences =
            Provider.of<LoginSuccessViewModel>(context, listen: false);
        final savedToken = appAccessPreferences.saveRefreshToken(
            LoginResponseModel(
                refreshToken: (value['data']['refreshToken']).toString()));

        savedToken.then((value) async {
          FlushBarUtils.flushBarErrorMessage(context,
              message: 'Login Successfully',
              backgroundColor: ColorsConstant.green);
          await Future.delayed(const Duration(milliseconds: 1200))
              .then((value) {
            setLoading(false);
            // Navigator.pushReplacementNamed(
            //     context, Routes.continueAsTenantRoute);
          });
        });

        // debugPrint("Data Response: ${value.toString()}");
      },
    ).onError(
      (error, stackTrace) {
        setLoading(false);
        FlushBarUtils.flushBarErrorMessage(context, message: error.toString());

        debugPrint('Error: ${error.toString()}');
      },
    );
  }

  Future<void> signUpApi(
      SignUpRequestModel signUpRequestModel, BuildContext context) async {
    setLoading(true);
    await _authRepo.signUpApi(signUpRequestModel).then(
      (value) {
        FlushBarUtils.flushBarErrorMessage(context,
            message: value['message'], backgroundColor: ColorsConstant.green);
        final appAccessPreferences =
            Provider.of<LoginSuccessViewModel>(context, listen: false);
        final savedToken = appAccessPreferences.saveRefreshToken(
            LoginResponseModel(
                refreshToken: (value['data']['refreshToken']).toString()));
        savedToken.then((value) async {
          await Future.delayed(const Duration(milliseconds: 1500))
              .then((value) {
            setLoading(false);
            // Navigator.pushReplacementNamed(
            //     context, Routes.continueAsTenantRoute);
          });

          // debugPrint("Data Response: ${value.toString()}");
        });
      },
    ).onError(
      (error, stackTrace) {
        setLoading(false);
        FlushBarUtils.flushBarErrorMessage(context, message: error.toString());
        debugPrint('Error: ${error.toString()}');
      },
    );
  }

  void logout(BuildContext context) async {
    final accessPref =
        Provider.of<AccessTokenServiceProvider>(context, listen: false);
    final refreshBool = await accessPref.removeRefreshToken();
    final accessBool = await accessPref.removeAccessToken();
    if (refreshBool == true && accessBool == true) {
      Navigator.pop(context);

      Navigator.pushReplacementNamed(context, Routes.loginRoute);
    }
  }
}
