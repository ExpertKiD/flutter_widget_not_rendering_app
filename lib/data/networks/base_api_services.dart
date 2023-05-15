abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse(String url);

  Future<dynamic> getGetApiResponseWithAccessToken(String url);

  Future<dynamic> getPostApiResponse(String url, dynamic requestBody);

  Future<dynamic> getGetApiResponseWithPathVariable(
      String url, String parameterValue);

  Future<dynamic> getPostApiResponseWithAccessToken(
      String url, dynamic requestBody);

  Future<dynamic> getPostApiResponseWithAccessTokenWithFormDataHeader(
      String url, dynamic requestBody);

  Future<dynamic> getPostApiResponseWithForgotToken(
      String url, dynamic requestBody);

  Future<dynamic> getPutApiResponseWithAccessToken(
      String url, dynamic requestBody);

  Future<dynamic> getDeleteApi(String url);

  Future getPutApiResponseWithPathVariableWithArchiveStatus(
      String url, String itemID, String archiveStatus);

  Future<dynamic> getPostFileApiResponseWithAccessToken(
      String url, String filePath);

  Future<dynamic> getGetApiResponseFileWithPathVariable(
      String url, String parameterValue);

  Future<dynamic> getDeleteApiWithPathVariable(
      String url, String parameterValue);

}
