import 'dart:async';
import 'dart:io';

import '../../core/exceptions/app_exceptions.dart' as ex;

class ExceptionHandlers {
  getExceptionString(error, {bool throwAppException = false}) {
    String message = '';

    if (error is SocketException) {
      message = 'No internet connection.';

      if (throwAppException) {
        return ex.AppException.noInternetConnection(message: message);
      }

      return message;
    } else if (error is HttpException) {
      message = 'HTTP error occurred.';

      if (throwAppException) {
        return ex.AppException.internalServerException(message: message);
      }

      return message;
    } else if (error is FormatException) {
      message = 'Invalid data format.';

      if (throwAppException) {
        return ex.AppException.formatNotParsable(message: message);
      }

      return message;
    } else if (error is TimeoutException) {
      message = 'Request timed out.';

      if (throwAppException) {
        return ex.AppException.timeOutException(message: message);
      }

      return message;
    } else if (error is BadRequestException) {
      message = error.message.toString();

      if (throwAppException) {
        return ex.AppException.badRequest(message: message);
      }

      return message;
    } else if (error is UnAuthorizedException) {
      message = error.message.toString();

      if (throwAppException) {
        return ex.AppException.badRequest(message: message);
      }

      return message;
    } else if (error is PageNotFoundException) {
      message = error.message.toString();

      if (throwAppException) {
        return ex.AppException.notFoundException(message: message);
      }

      return message;
    } else if (error is NotAcceptableException) {
      message = error.message.toString();

      if (throwAppException) {
        return ex.AppException.unProcessableEntity(message: message);
      }

      return message;
    } else if (error is FetchDataException) {
      message = error.message.toString();

      if (throwAppException) {
        return ex.AppException.unknownException(message: message);
      }

      return message;
    } else {
      message = 'Unknown error occured.';

      if (throwAppException) {
        return ex.AppException.unknownException(message: message);
      }

      return message;
    }
  }
}

class AppException implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  AppException([this.message, this.prefix, this.url]);
}

class BadRequestException extends AppException {
  BadRequestException([String? message, String? url])
      : super(message, 'Bad request', url);
}

class FetchDataException extends AppException {
  FetchDataException([String? message, String? url])
      : super(message, 'Unable to process the request', url);
}

class ApiNotRespondingException extends AppException {
  ApiNotRespondingException([String? message, String? url])
      : super(message, 'Api not responding', url);
}

class UnAuthorizedException extends AppException {
  UnAuthorizedException([String? message, String? url])
      : super(message, 'Unauthorized request', url);
}

class PageNotFoundException extends AppException {
  PageNotFoundException([String? message, String? url])
      : super(message, 'Page not found', url);
}

class NotAcceptableException extends AppException {
  NotAcceptableException([String? message, String? url])
      : super(message, 'Not Acceptable', url);
}
