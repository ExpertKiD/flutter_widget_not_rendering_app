import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/constants/api_constant.dart';
import '/data/exceptions/exception_handlers.dart';
import '/data/networks/base_api_services.dart';

@lazySingleton
class NetworkApiService extends BaseApiServices {
  static const int timeOutDuration = 10;

  @override
  Future<dynamic> getGetApiResponse(String url,
      {bool throwAppException = false}) async {
    var uri = Uri.parse(url);
    final sharedPreferences = await SharedPreferences.getInstance();
    late String token;

    token = sharedPreferences.getString(TokenType.refreshToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headers = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $token',
    };

    void updateHeader(String token) {
      headers = {
        'Content-Type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer $token',
      };
    }

    try {
      final response = await http
          .get(uri, headers: headers)
          .timeout(const Duration(seconds: 10));

      final responseJson = returnHttpResponse(response);
      return responseJson;
    } catch (error) {
      debugPrint(error.toString());
      debugPrint("get api response url: $url");
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for get api response with path variable
  @override
  Future getGetApiResponseWithPathVariable(String url, String parameterValue,
      {bool throwAppException = false}) async {
    final urlWithParams = Uri.encodeFull('$url$parameterValue');

    final sharedPreferences = await SharedPreferences.getInstance();
    late String accessToken;

    accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $accessToken",
      "Accept": "*/*",
    };

    void updateHeader(String accessToken) {
      headersWithAccessToken = {
        "Content-Type": "application/json",
        "Authorization": "Bearer $accessToken",
        "Accept": "*/*",
      };
    }

    try {
      final response = await http
          .get(Uri.parse(urlWithParams), headers: headersWithAccessToken)
          .timeout(const Duration(seconds: 10));

      final responseJson = returnHttpResponse(response);

      // final filePath = File(response.body);
      // final file = filePath.writeAsBytes(response.bodyBytes);

      return responseJson;
    } catch (error) {
      debugPrint('get file url: $url');
      debugPrint('get file url with encode: $urlWithParams');
      debugPrint(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for get api response with parameters
  // @override
  // Future getGetApiResponseWithParameter(
  //     String url, String parameterValue) async {
  //   // final urlWithParams = Uri.encodeFull('$url$parameterValue');
  //   var uri = Uri.parse(url)

  //   final sharedPreferences = await SharedPreferences.getInstance();
  //   late String accessToken;

  //   accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

  //   // print('I am token : $token');

  //   // Map<String, String> queryParameter = {
  //   //   'parentId': parentId;
  //   // };

  //   Map<String, String>? headersWithAccessToken = {
  //     'Content-Type': 'application/json;charset=UTF-8',
  //     'Authorization': 'Bearer $accessToken',
  //   };

  //   void updateHeader(String accessToken) {
  //     headersWithAccessToken = {
  //       'Content-Type': 'application/json;charset=UTF-8',
  //       'Authorization': 'Bearer $accessToken',
  //     };
  //   }

  //   try {
  //     final response = await http
  //         .get(Uri.parse(urlWithParams), headers: headersWithAccessToken)
  //         .timeout(const Duration(seconds: 10));

  //     final responseJson = returnHttpResponse(response);
  //     return responseJson;
  //   } catch (error) {
  //     debugPrint(error.toString());
  //     throw ExceptionHandlers().getExceptionString(error, throwAppException: throwAppException,);
  //   }
  // }

  @override
  Future getGetApiResponseWithAccessToken(String url,
      {bool throwAppException = false}) async {
    var uri = Uri.parse(url);
    final sharedPreferences = await SharedPreferences.getInstance();
    late String accessToken;

    accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $accessToken',
    };

    void updateHeader(String accessToken) {
      headersWithAccessToken = {
        'Content-Type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer $accessToken',
      };
    }

    try {
      final response = await http
          .get(uri, headers: headersWithAccessToken)
          .timeout(const Duration(seconds: 10));

      final responseJson = returnHttpResponse(response);

      return responseJson;
    } catch (error) {
      debugPrint(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  @override
  Future<dynamic> getPostApiResponse(String url, dynamic requestBody,
      {bool throwAppException = false}) async {
    // var responseJson;
    var uri = Uri.parse(url);

    try {
      final response = await http
          .post(uri, headers: DefaultHeaders.headers, body: requestBody)
          .timeout(
            const Duration(seconds: timeOutDuration),
          );
      final responseJson = returnHttpResponse(response);
      return responseJson;
    } catch (error) {
      print('unit uri: $url');
      debugPrint(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for post item with access token
  @override
  Future<dynamic> getPostApiResponseWithAccessToken(
      String url, dynamic requestBody,
      {bool throwAppException = false}) async {
    // var responseJson;
    var uri = Uri.parse(url);

    final sharedPreferences = await SharedPreferences.getInstance();
    late String accessToken;

    accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $accessToken',
    };
    try {
      final response = await http
          .post(uri,
              headers: headersWithAccessToken, body: jsonEncode(requestBody))
          .timeout(
            const Duration(seconds: timeOutDuration),
          );
      final responseJson = returnHttpResponse(response);
      return responseJson;
    } catch (error) {
      print(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  } //for post item with access token

  @override
  Future<dynamic> getPostApiResponseWithAccessTokenWithFormDataHeader(
      String url, dynamic requestBody,
      {bool throwAppException = false}) async {
    // var responseJson;
    var uri = Uri.parse(url);

    final sharedPreferences = await SharedPreferences.getInstance();
    // late String accessToken;

    final String accessToken =
        sharedPreferences.getString(TokenType.accessToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      'Content-Type': 'multipart/form-data',
      'Authorization': 'Bearer $accessToken',
      'Accept': '*/*'
    };

    try {
      // final request = http.MultipartRequest(
      //   "POST",
      //   uri,
      // )
      //   ..headers.addAll(headersWithAccessToken)
      //   ..fields.addAll(requestBody);
      // final response = await request.send();
      // final resStr = await response.stream.bytesToString();
      // final request = http.MultipartRequest('POST', uri);
      // final multipartFile = http.MultipartFile()

      final response = await http
          .post(uri, headers: headersWithAccessToken, body: requestBody)
          .timeout(
            const Duration(seconds: timeOutDuration),
          );

      final responseJson = returnHttpResponse(response);
      return responseJson;
    } catch (error) {
      print(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for post item with access token
  @override
  Future<dynamic> getPutApiResponseWithAccessToken(
      String url, dynamic requestBody,
      {bool throwAppException = false}) async {
    // var responseJson;
    var uri = Uri.parse(url);

    final sharedPreferences = await SharedPreferences.getInstance();
    late String accessToken;

    accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $accessToken',
    };

    try {
      // final response = await http
      //     .post(uri,
      //         headers: headersWithAccessToken, body: jsonEncode(requestBody))
      //     .timeout(
      //       const Duration(seconds: timeOutDuration),
      //     );

      final response = await http
          .put(uri,
              headers: headersWithAccessToken, body: jsonEncode(requestBody))
          .timeout(const Duration(seconds: timeOutDuration));
      final responseJson = returnHttpResponse(response);
      return responseJson;
    } catch (error) {
      debugPrint(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for put api response with path variable (itemID and archive staturs)
  @override
  Future getPutApiResponseWithPathVariableWithArchiveStatus(
      String url, String itemID, String archiveStatus,
      {bool throwAppException = false}) async {
    final urlWithParams = Uri.encodeFull('$url$itemID/$archiveStatus');

    final sharedPreferences = await SharedPreferences.getInstance();
    late String accessToken;

    accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $accessToken',
    };

    void updateHeader(String accessToken) {
      headersWithAccessToken = {
        'Content-Type': 'application/json;charset=UTF-8',
        'Authorization': 'Bearer $accessToken',
      };
    }

    try {
      final response = await http
          .put(Uri.parse(urlWithParams), headers: headersWithAccessToken)
          .timeout(const Duration(seconds: 10));

      final responseJson = returnHttpResponse(response);
      return responseJson;
    } catch (error) {
      debugPrint(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for delete operation
  //for post item with access token
  @override
  Future<dynamic> getDeleteApi(String url,
      {bool throwAppException = false}) async {
    // var responseJson;
    // var uri = Uri.parse(url);
    final urlWithParams = Uri.encodeFull(url);
    // 'http://206.189.29.252:5000/api/system/dynamic-list/delete/$parameterValue');

    final sharedPreferences = await SharedPreferences.getInstance();
    late String accessToken;

    accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $accessToken',
    };

    try {
      final response = await http
          .delete(Uri.parse(urlWithParams), headers: headersWithAccessToken)
          .timeout(
            const Duration(seconds: timeOutDuration),
          );
      final responseJson = returnHttpResponse(response);
      return responseJson;
    } catch (error) {
      debugPrint(error.toString());
      debugPrint('delete url: ${Uri.parse(urlWithParams)}');
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for forgot password reset
  //for post item with access token
  @override
  Future<dynamic> getPostApiResponseWithForgotToken(
      String url, dynamic requestBody,
      {bool throwAppException = false}) async {
    // var responseJson;
    var uri = Uri.parse(url);

    final sharedPreferences = await SharedPreferences.getInstance();
    late String forgotToken;

    forgotToken =
        sharedPreferences.getString(TokenType.forgotPasswordToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $forgotToken',
    };

    try {
      final response = await http
          .post(uri, headers: headersWithAccessToken, body: requestBody)
          .timeout(
            const Duration(seconds: timeOutDuration),
          );
      final responseJson = returnHttpResponse(response);
      return responseJson;
    } catch (error) {
      debugPrint(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for http response
  dynamic returnHttpResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        final responseJson = jsonDecode(response.body);
        return responseJson;

      case 400: //Bad request
        throw BadRequestException(jsonDecode(response.body)['message']);
      case 401: //Unauthorized
        throw UnAuthorizedException(jsonDecode(response.body)['message']);
      case 403: //Forbidden
        throw UnAuthorizedException(jsonDecode(response.body)['message']);
      case 404: //Resource Not Found
        throw PageNotFoundException(jsonDecode(response.body)['message']);
      case 406: //Not Acceptable
        throw NotAcceptableException(jsonDecode(response.body)['message']);
      default:
        throw FetchDataException(
            'Something went wrong! ${response.statusCode} error');
    }
  }

  //for post file (upload) with access token

  @override
  Future<dynamic> getPostFileApiResponseWithAccessToken(
      String url, String filePath,
      {bool throwAppException = false}) async {
    // var responseJson;
    var uri = Uri.parse(url);

    final sharedPreferences = await SharedPreferences.getInstance();
    late String accessToken;

    accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $accessToken',
    };
    try {
      final request = http.MultipartRequest('POST', uri);
      request.headers.addAll(headersWithAccessToken);
      final multiPartFile = await http.MultipartFile.fromPath('file', filePath);
      request.files.add(multiPartFile);
      final response = await request.send();
      final responseResult = await http.Response.fromStream(response);
      final responseJson = returnHttpResponse(responseResult);
      return responseJson;
    } catch (error) {
      debugPrint(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for get api response with path variable for file
  @override
  Future getGetApiResponseFileWithPathVariable(
      String url, String parameterValue,
      {bool throwAppException = false}) async {
    final urlWithParams = Uri.encodeFull('$url$parameterValue');

    final sharedPreferences = await SharedPreferences.getInstance();
    late String accessToken;

    accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

    // print('I am token : $token');

    Map<String, String>? headersWithAccessToken = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $accessToken",
      "Accept": "*/*",
    };

    void updateHeader(String accessToken) {
      headersWithAccessToken = {
        "Content-Type": "application/json",
        "Authorization": "Bearer $accessToken",
        "Accept": "*/*",
      };
    }

    try {
      final response = await http
          .get(Uri.parse(urlWithParams), headers: headersWithAccessToken)
          .timeout(const Duration(seconds: 10));

      final responseJson = returnHttpResponse(response);

      final filePath = XFile(responseJson);
      // final file = filePath.writeAsBytes(response.bodyBytes);

      return filePath;
    } catch (error) {
      debugPrint('get file url: $url');
      debugPrint('get file url with encode: $urlWithParams');
      debugPrint(error.toString());
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }

  //for delete operation with path variable
  //for post item with access token
  @override
  Future<dynamic> getDeleteApiWithPathVariable(
      String url, String parameterValue,
      {bool throwAppException = false}) async {
    final urlWithParams = Uri.encodeFull('$url$parameterValue');

    final sharedPreferences = await SharedPreferences.getInstance();
    late String accessToken;

    accessToken = sharedPreferences.getString(TokenType.accessToken) ?? '';

    Map<String, String>? headersWithAccessToken = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Authorization': 'Bearer $accessToken',
    };

    try {
      final response = await http
          .delete(Uri.parse(urlWithParams), headers: headersWithAccessToken)
          .timeout(
            const Duration(seconds: timeOutDuration),
          );
      final responseJson = returnHttpResponse(response);
      return responseJson;
    } catch (error) {
      debugPrint(error.toString());
      debugPrint('delete url: ${Uri.parse(urlWithParams)}');
      throw ExceptionHandlers().getExceptionString(
        error,
        throwAppException: throwAppException,
      );
    }
  }
}
