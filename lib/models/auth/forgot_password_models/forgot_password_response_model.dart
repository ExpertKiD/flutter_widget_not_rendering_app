
class ForgotPasswordResponseModel {
  String? hash;
  String? email;
  int? otpLength;

  ForgotPasswordResponseModel({this.hash, this.email, this.otpLength});

  ForgotPasswordResponseModel.fromJson(Map<String, dynamic> json) {
    if(json["hash"] is String) {
      hash = json["hash"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["otpLength"] is int) {
      otpLength = json["otpLength"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["hash"] = hash;
    _data["email"] = email;
    _data["otpLength"] = otpLength;
    return _data;
  }
}