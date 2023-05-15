
class TenantSpecificSpaceModel {
  String? refreshToken;
  String? accessToken;

  TenantSpecificSpaceModel({this.refreshToken, this.accessToken});

  TenantSpecificSpaceModel.fromJson(Map<String, dynamic> json) {
    if(json["refreshToken"] is String) {
      refreshToken = json["refreshToken"];
    }
    if(json["accessToken"] is String) {
      accessToken = json["accessToken"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["refreshToken"] = refreshToken;
    _data["accessToken"] = accessToken;
    return _data;
  }
}  