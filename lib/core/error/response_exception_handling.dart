import 'dart:async';
import 'dart:io';

import '../constants/error_text_const.dart';
import 'exception.dart';

class ResponseExceptionHandling {
  static Future<T> responseExceptionHandling<T>(
      Future<T> Function() action) async {
    try {
      return await action();
    } on SocketException {
      throw NetworkException(message: ErrorTextConst.NO_INERNET);
    } on TimeoutException {
      throw NetworkException();
    } on CustomException {
      rethrow; // Allow existing CustomExceptions to propagate
    } catch (e) {
      throw UnknownException(
        error: (e is Error) ? e : null,
        
      );
    }
  }
}
