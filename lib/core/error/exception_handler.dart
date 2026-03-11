import 'package:ijarahub/core/error/exception.dart';

import '../constants/error_text_const.dart';
import 'error_handler.dart';

class ExceptionHandler {
  static String exceptionHadle(Object exception) {
    if (exception is CustomException) {
      ErrorHandler.handleException(exception);
      switch (exception.type) {
        case ExceptionTypeEnum.serverException:
          final fail = exception as ServerException;
          return fail.message;
        case ExceptionTypeEnum.networkException:
          final fail = exception as NetworkException;
          return 'Network Failure : ${fail.message}';
        case ExceptionTypeEnum.localServicesException:
          final fail = exception as LocalServicesException;
          return 'Local Services Failure : ${fail.message}';
        case ExceptionTypeEnum.localPackageException:
          final fail = exception as LocalPackageException;
          return fail.message;
        case ExceptionTypeEnum.unknownException:
          final fail = exception as UnknownException;
          return fail.message;
      }
    } else {
      ErrorHandler.handleUnexpected(exception);
      return ErrorTextConst.UNEXPECTED_ERROR;
    }
  }
}
