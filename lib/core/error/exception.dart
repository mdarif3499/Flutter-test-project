import '../constants/error_text_const.dart';

enum ExceptionTypeEnum {
  serverException("SERVER_EXCEPTION"),
  localServicesException("LOCAL_SERVICES_EXCEPTION"),
  networkException("NETWORK_EXCEPTION"),
  localPackageException("LOCAL_PACAKGE_EXCEPTION"),
  unknownException(("UNKNOWN_EXCEPTION"));

  final String type;

  const ExceptionTypeEnum(this.type);
}

abstract class CustomException implements Exception {
  final String message;
  final Error? error; // Optional: Error details
  final ExceptionTypeEnum type;
  final int? statusCode;

  CustomException({
    required this.message,
    this.error,
    required this.type,
    this.statusCode,
  });

  @override
  String toString() {
    //ANSI escape codes

    const red = '\x1B[31m';
    const yellow = '\x1B[33m';
    const gray = '\x1B[90m';
    const reset = '\x1B[0m';

    final String stackTraceString = error != null
        ? '${error!.stackTrace}'
              .split('\n') // Split stack trace into lines
              .map((line) => '$gray$line$reset') // Apply gray to each line
              .join('\n') // Rejoin lines with newlines
        : '${gray}Null$reset';

    return '''
$yellow:: CustomException START,$reset

:: ExceptionType: ${type.type}, 

:: Message: $message, ${statusCode != null ? "\n:: StatusCode: $statusCode," : ""}

$red:: Error: $error,$reset

$gray:: StackTrace: $stackTraceString

$yellow:: CustomException END.$reset
''';
  }
}

class ServerException extends CustomException {
  ServerException({required super.message, super.statusCode = 500, super.error})
    : super(type: ExceptionTypeEnum.serverException);
}

class LocalServicesException extends CustomException {
  LocalServicesException({required super.message, super.error})
    : super(type: ExceptionTypeEnum.localServicesException);
}

class NetworkException extends CustomException {
  NetworkException({
    super.message = ErrorTextConst.CONNECTION_TIME_OUT,
    super.error,
  }) : super(type: ExceptionTypeEnum.networkException);
}

class UnknownException extends CustomException {
  UnknownException({
    super.message = ErrorTextConst.UNEXPECTED_ERROR,
    super.error,
  }) : super(type: ExceptionTypeEnum.unknownException);
}

class LocalPackageException extends CustomException {
  LocalPackageException({required super.message, super.error})
    : super(type: ExceptionTypeEnum.localPackageException);
}
