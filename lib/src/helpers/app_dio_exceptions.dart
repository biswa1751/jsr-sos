import 'package:jsr_sos/src/constants/error_messages.dart';
import 'package:jsr_sos/src/helpers/app_exceptions.dart';

class AppDioException extends AppException {
  @override
  String? message;
  @override
  String toString() => 'Exception: $message';
}

// for 401 status code
class SessionExpiredException extends AppDioException {
  @override
  String? message;
  SessionExpiredException({this.message = ErrorMessages.sessionExpired});
}

// for 400 status code
class BadParameterException extends AppDioException {
  @override
  String? message;
  BadParameterException(this.message);
}

// for 404 status code
class UnknownEndpointException extends AppDioException {
  @override
  String? message;
  UnknownEndpointException({this.message = ErrorMessages.unknownEndPoint});
}

// for 500 status code
class InternalServerErrorException extends AppDioException {
  @override
  String? message;
  InternalServerErrorException(
      {this.message = ErrorMessages.internalServerError});
}

//for connectiontimedout
class ConnectionTimedOutException extends AppDioException {
  @override
  String? message;
  ConnectionTimedOutException(
      {this.message = ErrorMessages.connectionTimedOut});
}

// for forbidden
class ForbiddenException extends AppDioException {
  @override
  String? message;
  ForbiddenException({this.message = ErrorMessages.forbidden});
}

// for account blocked
class AccountBlockedException extends AppDioException {
  @override
  String? message;
  AccountBlockedException({this.message = ErrorMessages.accountBlocked});
}

class CheckInternetException extends AppDioException {
  @override
  String? message;
  CheckInternetException(
      {this.message = ErrorMessages.checkInternetConnection});
}

class SomethingHappendAtOurEndException extends AppDioException {
  @override
  String? message;
  SomethingHappendAtOurEndException(
      {this.message = ErrorMessages.somethingHappendAtOurend});
}
