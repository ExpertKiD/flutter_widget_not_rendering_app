
class LoginResponseModel {
  String? refreshToken;

  LoginResponseModel({this.refreshToken});

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = {};
    data['refreshToken'] = refreshToken;
    return data;
  }
}