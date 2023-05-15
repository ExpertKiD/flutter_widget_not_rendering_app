import 'package:shared_preferences/shared_preferences.dart';

class ApiConstant {
  static String baseUrl = 'https://example.com';

  static String fileUrl(String file) => '$baseUrl/api/system/file/detail/$file';

  static String displayImageUrl(String image) {
    return '$baseUrl/api/system/file/detail/$image';
  }

  //api endpoint for Authentication part
  static String signUpEndPoint = '$baseUrl/api/system/user/register';
  static String loginEndPoint = '$baseUrl/api/system/user/login';
  static String tenantSpaceListPoint = '$baseUrl/api/system/user/space-list';
  static String forgotPasswordPoint =
      '$baseUrl/api/system/user/request-forget-password';

  static String loginToOneSpecificSpaceEndPoint(String tenantSpaceId) {
    return '$baseUrl/api/system/user/space-access-token?tenant=$tenantSpaceId';
  }

  static String currentProfileEndPoint = '$baseUrl/api/system/user/current';

  // static String getDynamicListEndPoint =
  //     '$baseUrl/api/system/dynamic-list/:fieldType';

  static String dynamicListEndPoint = '$baseUrl/api/system/dynamic-list/';

  // static String deleteDynamicListEndPoint =
  //     '$baseUrl/api/system/dynamic-list/delete/:itemID';

  static String getDeleteDynamicListEndPoint(String itemID) {
    return '$baseUrl/api/system/dynamic-list/delete/$itemID';
  }

  static String nestedPlaceEndPoint = '$baseUrl/api/system/nested-place/';

  static String fetchSpecificPlaceNodeEndPoint(String parentID) {
    return '$baseUrl/api/system/nested-place/?parentID=$parentID';
  }

  static String deleteNestedPlaceEndPoint =
      '$baseUrl/api/system/nested-place/delete/:itemID/';

  static String getDeleteNestedPlaceEndPoint(String itemID) {
    return '$baseUrl/api/system/nested-place/delete/$itemID';
  }

  //for forgot password
  static String requestForgotPasswordEndPoint =
      '$baseUrl/api/system/user/request-forget-password';
  static String validateForgotPasswordOtpEndPoint =
      '$baseUrl/api/system/user/validate-forget-password-otp';
  static String resetPasswordEndPoint =
      '$baseUrl/api/system/user/forget-password';

  //for property main module
  static String listOfPropertyEndPoint = '$baseUrl/api/system/property/';

  static String listOfArchivedPropertyEndPoint =
      '$baseUrl/api/system/property/archived/';
  static String propertyDetailsEndPoint =
      '$baseUrl/api/system/property/detail/';
  static String archivePropertyEndPoint =
      '$baseUrl/api/system/property/archive/';
  static String addPropertyEndPoint = '$baseUrl/api/system/property/';

  //document module
  static String uploadFileEndPoint = "$baseUrl/api/system/file/";

  static String getFileEndPoint = "$baseUrl/api/system/file/detail/";

  static String getDeletePropertyEndPoint(String itemID) {
    return '$baseUrl/api/system/property/delete/$itemID';
  }

  static String getDeleteOwnershipEndPoint(String propertyID, String ownerID) {
    return '$baseUrl/api/system/owner/assign/$propertyID/$ownerID';
  }

  static String getDeleteFileEndPoint(String itemID) {
    return '$baseUrl/api/system/file/delete/$itemID';
  }

  static String upadatePropertyGeneralDetailsEndPoint =
      '$baseUrl/api/system/property/';

  //property unit
  static String getPropertyUnitEndPoint(String propertyID) {
    return '$baseUrl/api/system/unit/?propertyID=$propertyID';
  }

  static String upadateOwnerDetailsEndPoint =
      '$baseUrl/api/system/owner/assign/edit/';

  //add and assign owner
  static String addAndAssignOwnerEndPoint =
      "$baseUrl/api/system/owner/add-and-assign/";
  static String assignOwnerEndPoint = "$baseUrl/api/system/owner/assign/";
  static String fetchOwnershipEndPoint =
      '$baseUrl/api/system/owner/ownership/list/';

  static String getFetchUserTypeEndPoint(String userType) {
    return "$baseUrl/api/system/space-user/?userType=$userType";
  }

  //for unit module
  static String fetchUnitOfLoggedInSpaceEndPoint = '$baseUrl/api/system/unit/';

  //=========For unitListing======//
  static String unitListingEndPoint = "$baseUrl/api/system/listing-unit/";

  static String fetchUnitListingInSpace(String unitID) {
    return "$baseUrl/api/system/listing-unit/?unitID=$unitID";
  }

  static String getDeleteUnitListing(String itemID) {
    return "$baseUrl/api/system/listing-unit/delete/$itemID";
  }

  static String editUnitListingEndPoint = "$baseUrl/api/system/listing-unit/";

  //==================//
  static String addUnitEndPoint = '$baseUrl/api/system/unit/';

  static String getDeleteUnitEndPoint(String unitID) {
    return '$baseUrl/api/system/unit/delete/$unitID';
  }

  static String unitDetailsEndPoint = '$baseUrl/api/system/unit/detail/';

  static String updateUnitDetailsEndPoint = '$baseUrl/api/system/unit/';

  static String getListOfArchivedUnitEndPoint(int archiveNumber) {
    return '$baseUrl/api/system/unit?archived=$archiveNumber';
  }

  static String archiveUnitEndPoint = '$baseUrl/api/system/unit/archive/';

  //for tenant module

  //for inventory module
  static String fetchAllInventoriesEndPoint = '$baseUrl/api/system/inventory/';

  // static String unitDetailsEndPoint = '$baseUrl/api/system/unit/detail/';
  //Tenants Module
  static String addTenantEndPoint = "$baseUrl/api/system/space-user/";
  static String roleEndPoint = "$baseUrl/api/system/privilege/";

  static String getDeleteTenant(String userID) {
    return "$baseUrl/api/system/space-user/remove-from-space/$userID";
  }

  //=======Candidate module Api==========//
  static String addCandidateEndPoint = "$baseUrl/api/system/candidate/";
  static String fetchCandidateEndPoint = "$baseUrl/api/system/candidate/";

  static String deleteCandidate(String itemID) {
    return "$baseUrl/api/system/candidate/delete/$itemID";
  }

  static String fetchSpecificDetailEndPoint(String itemID) {
    return "$baseUrl/api/system/candidate/detail/$itemID";
  }

  static String editCandidateEndPoint = "$baseUrl/api/system/candidate/";
  static String archieveUnarchaiveCandidateEndPoint =
      "$baseUrl/api/system/candidate/archive/";

  static String fetchUnarchievedCandidateListEndPoint(int archieved) {
    return "$baseUrl/api/system/candidate?archived=$archieved";
  }

  //for tenancy module
  static String fetchAllTenanciesEndPoint = '$baseUrl/api/system/tenancy/';
  static String addTenanciesEndPoint = '$baseUrl/api/system/tenancy/';
  static String tenancyDetailsEndPoint = '$baseUrl/api/system/tenancy/detail/';
  static String fetchAllArchivedTenancyApi =
      '$baseUrl/api/system/tenancy/archived';

  static String getDeleteTenancyEndPoint(String tenancyID) {
    return '$baseUrl/api/system/tenancy/delete/$tenancyID';
  }

  static String archiveTenancyEndPoint = '$baseUrl/api/system/tenancy/archive/';

  //for document module
  static String fetchAllDocumentEndPoint = '$baseUrl/api/system/document/';

  static String getListOfArchivedDocumentEndPoint(int archiveNumber) {
    return '$baseUrl/api/system/document/?archived=$archiveNumber';
  }

  static String archiveDocumentEndPoint =
      '$baseUrl/api/system/document/archive/';
  static String deleteDocumentEndPoint = '$baseUrl/api/system/document/delete/';

  // static String displayImageUrl(String image) {
  //   return 'http://206.189.29.252:5000/api/system/file/detail/$image';
  // }

  static String documentDetailsEndPoint =
      '$baseUrl/api/system/document/detail/';
  static String addDocumentEndPoint = '$baseUrl/api/system/document/';
}

class HeadersType {
  static const bearer = 'Bearer';
  static const contentType = 'Content-Type';
  static const accept = 'Accept';
  static const authorization = "Authorization";
}

class ApiHeaders {
  late String token;

  static Map<String, String> getDefaultHeaders(String token) {
    final defaultHeaders = {
      HeadersType.contentType: 'application/json',
      HeadersType.accept: 'application/json',
      HeadersType.authorization: 'Bearer $token',
    };
    return defaultHeaders;
  }

  Future<Map<String, String>> getApiHeadersWithRefreshToken() async {
    final sharedPref = await SharedPreferences.getInstance();
    token = sharedPref.getString(TokenType.refreshToken) ?? '';

    print('refresh token in headers: $token');
    return getDefaultHeaders(token);
  }

  Future<Map<String, String>> getApiHeadersWithAccessToken() async {
    final sharedPref = await SharedPreferences.getInstance();
    token = sharedPref.getString(TokenType.accessToken) ?? '';

    print('access token in headers: $token');
    return getDefaultHeaders(token);
  }
}

class DefaultHeaders {
  static const headers = {
    HeadersType.contentType: 'application/json',
    HeadersType.accept: 'application/json',
  };

  static const headersWithRefreshToken = {
    HeadersType.contentType: 'application/json',
    HeadersType.accept: 'application/json',
    // HeadersType.authorization: '${HeadersType.bearer}${TokenType.refreshToken}',
  };
}

class TokenType {
  static const refreshToken = 'refreshToken';
  static const accessToken = 'accessToken';
  static const forgotPasswordHashToken = 'forgotPasswordHashToken';
  static const email = 'email';
  static const forgotPasswordToken = 'forgotPasswordToken';
}
