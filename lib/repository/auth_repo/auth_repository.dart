import '/models/auth/auth_models/login_request_model.dart';
import '/models/auth/auth_models/signup_request_model.dart';
import '/constants/api_constant.dart';
import '/data/networks/base_api_services.dart';
import '/data/networks/network_api_services.dart';

class AuthRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(LoginRequestModel loginRequestBody) async {
    final loginUrl = ApiConstant.loginEndPoint;
    try {
      final loginBody = loginRequestBody.toJson();
      final response =
          await _apiServices.getPostApiResponse(loginUrl, loginBody);
      return response;
    } catch (err) {   
      
      throw err.toString();
    }
  }

  Future<dynamic> signUpApi(SignUpRequestModel signUpRequestBody) async {
    final signUpUrl = ApiConstant.signUpEndPoint;
    try {
      final signUpBody = signUpRequestBody.toJson();
      final response =
          await _apiServices.getPostApiResponse(signUpUrl, signUpBody);
      return response;
    } catch (err) {
      throw err.toString();
    }
  }
}
