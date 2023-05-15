class TenantSpaceListModel {
  String? id;
  TenantId? tenantId;
  String? role;
  String? createdAt;

  TenantSpaceListModel({this.id, this.tenantId, this.role, this.createdAt});

  TenantSpaceListModel.fromJson(Map<String, dynamic> json) {
    if (json["_id"] is String) {
      id = json["_id"];
    }
    if (json["tenantID"] is Map) {
      tenantId =
          json["tenantID"] == null ? null : TenantId.fromJson(json["tenantID"]);
    }
    if (json["role"] is String) {
      role = json["role"];
    }
    if (json["createdAt"] is String) {
      createdAt = json["createdAt"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    if (tenantId != null) {
      _data["tenantID"] = tenantId?.toJson();
    }
    _data["role"] = role;
    _data["createdAt"] = createdAt;
    return _data;
  }
}

class TenantId {
  String? id;
  String? name;
  bool? isDeleted;
  bool? isActive;
  String? activePackageCheckedAt;
  List<String>? modules;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? activePackage;

  TenantId(
      {this.id,
      this.name,
      this.isDeleted,
      this.isActive,
      this.activePackageCheckedAt,
      this.modules,
      this.createdAt,
      this.updatedAt,
      this.v,
      this.activePackage});

  TenantId.fromJson(Map<String, dynamic> json) {
    if (json["_id"] is String) {
      id = json["_id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["isDeleted"] is bool) {
      isDeleted = json["isDeleted"];
    }
    if (json["isActive"] is bool) {
      isActive = json["isActive"];
    }
    if (json["activePackageCheckedAt"] is String) {
      activePackageCheckedAt = json["activePackageCheckedAt"];
    }
    if (json["modules"] is List) {
      modules =
          json["modules"] == null ? null : List<String>.from(json["modules"]);
    }
    if (json["createdAt"] is String) {
      createdAt = json["createdAt"];
    }
    if (json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if (json["__v"] is int) {
      v = json["__v"];
    }
    if (json["activePackage"] is String) {
      activePackage = json["activePackage"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["_id"] = id;
    _data["name"] = name;
    _data["isDeleted"] = isDeleted;
    _data["isActive"] = isActive;
    _data["activePackageCheckedAt"] = activePackageCheckedAt;
    if (modules != null) {
      _data["modules"] = modules;
    }
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["__v"] = v;
    _data["activePackage"] = activePackage;
    return _data;
  }
}
