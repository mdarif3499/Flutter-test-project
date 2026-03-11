import 'package:flutter/foundation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../constants/error_text_const.dart';
import 'exception.dart';

class ErrorHandler {
  static void handleError(Error error) {
    debugPrint('handleError :: $error');
    debugPrint(
        '${ErrorTextConst.UNEXPECTED_ERROR}: ${error.runtimeType} \n: Error: $error');
    debugPrint('StackTrace: ${error.stackTrace}');
    // Log or send error to monitoring service (e.g., Sentry, Firebase Crashlytics)

    // Capture error with Sentry
    Sentry.captureException(
      error,
      stackTrace: error.stackTrace,
    );
  }

  static void handleException(CustomException exception) {
    debugPrint(exception.toString());
    // Log exception details or notify users

    Sentry.captureException(
      exception,
      stackTrace: exception.error?.stackTrace,
    );
  }

  static void handleUnexpected(Object e) {
    debugPrint('handleUnexpected :: $e');
    if (e is Error) {
      handleError(e);
      return;
    }
    debugPrint('${ErrorTextConst.UNEXPECTED_ERROR}: $e');
    // Capture unexpected exception with Sentry
    Sentry.captureMessage(
      '${ErrorTextConst.UNEXPECTED_ERROR}: $e',
      level: SentryLevel.error,
    );
  }
}
