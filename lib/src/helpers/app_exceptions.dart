import 'package:jsr_sos/src/constants/error_messages.dart';

abstract class AppException implements Exception {
  String? get message;
  @override
  String toString() => 'Exception: $message';
}

// for 401 status code
class EmptyFieldException extends AppException {
  @override
  String message;
  EmptyFieldException({this.message = ErrorMessages.emptyFieldInfo});
}
