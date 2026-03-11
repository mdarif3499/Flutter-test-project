import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../constants/error_text_const.dart';
import '../error/exception.dart';
import 'package:http/http.dart' as http;

class ServerResponseHandler {
  static dynamic serverResponseHandler(http.Response? response) {
    if (response == null) {
      throw ServerException(
        message: ErrorTextConst.SERVER_NOT_RESPONDING,
        statusCode: -1, // Indicates no response
      );
    }

    debugPrint("serverResponseHandler : Body : ${response.body}");

    // Handle 204 No Content, which has an empty body and is a success case.
    if (response.statusCode == 204) {
      return {};
    }

    // If the body is empty for other status codes, it's likely an issue.
    if (response.body.isEmpty) {
      throw ServerException(
        message: ErrorTextConst.UNEXPECTED_SERVER_ERROR,
        statusCode: response.statusCode,
      );
    }

    final dynamic mapBody = json.decode(response.body);

    debugPrint(
      "serverResponseHandler : mapBody jsonDecode : ${jsonDecode(response.body)}",
    );

    debugPrint("serverResponseHandler : mapBody json.decode : $mapBody");

    debugPrint("serverResponseHandler : statusCode : ${response.statusCode}");

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return mapBody;
    } else {
      final String errorMessage =
          mapBody["detail"] ??
          mapBody["title"] ??
          mapBody["message"] ??
          ErrorTextConst.UNEXPECTED_SERVER_ERROR;
      throw ServerException(
        message: errorMessage,
        statusCode: response.statusCode,
      );
    }
  }
}
