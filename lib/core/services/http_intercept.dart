import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../error/response_exception_handling.dart';

import 'token_service.dart';

class HttpIntercept {
  final http.Client _http = Get.find<http.Client>();
  final String _baseUrl;
  HttpIntercept({required String baseUrl}) : _baseUrl = baseUrl;
  final TokenService _tokenService = Get.find<TokenService>();

  Future<http.Response> handleRequest(
    Future<http.Response> Function() requestFunction,
    Function retryFunction,
  ) async {
    try {
      final response = await requestFunction();
      debugPrint("HandleRequest : response body : ${response.body}");
      return await _ifAccessTokenExpire(response, retryFunction);
    } catch (e) {
      rethrow;
    }
  }

  Future<http.Response> _ifAccessTokenExpire(
    http.Response responce,
    Function continueCurrentRequest,
  ) async {
    if (responce.statusCode != 401) {
      return responce;
    }
    final String? refreshToken = await _tokenService.getRefreshToken();
    if (refreshToken != null) {
      final isDone = await _refreshTokens(refreshToken);

      if (isDone) {
        debugPrint(
          "(_ifAccessTokenExpire) RefreshToken redirect function working ${isDone.toString()}",
        );
        return await continueCurrentRequest();
      }
    }
    return responce;
  }

  Future<bool> _refreshTokens(String refreshToken) async {
    final routePath = "token/refresh";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _http.post(
        Uri.parse('$_baseUrl/$routePath'),
        body: {"refresh_token": refreshToken},
      );
      debugPrint("_refreshTokens() : refreshToken : $refreshToken");
      debugPrint("_refreshTokens() : response : ${response.body}");

      return await _tokenService.saveTokensFromResponse(response);
    });
  }

  Future<http.StreamedResponse> handleStreamRequest(
    Future<http.StreamedResponse> Function() requestFunction,
    Function retryFunction,
  ) async {
    try {
      final response = await requestFunction();

      if (response.statusCode != 401) return response;
      final String? refreshToken = await _tokenService.getRefreshToken();
      if (refreshToken != null) {
        final isDone = await _refreshTokens(refreshToken);

        if (isDone) {
          debugPrint(
            "(handleStreamRequest) RefreshToken redirect function working ${isDone.toString()}",
          );
          return await retryFunction();
        }
      }
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
