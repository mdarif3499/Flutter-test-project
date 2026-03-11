import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'package:mime/mime.dart'; // To get the MIME type of the file
import 'package:path/path.dart'; // To extract the file name
import 'package:http_parser/http_parser.dart';

import 'http_intercept.dart';
import 'token_service.dart'; // Import MediaType

class HTTPService extends GetxService {
  final http.Client _http = Get.find<http.Client>();
  final String _baseUrl;
  final TokenService _tokenService = Get.find<TokenService>();
  final HttpIntercept _httpIntercept = Get.find<HttpIntercept>();

  HTTPService({required String baseUrl}) : _baseUrl = baseUrl;

  Map<String, String> _makeHeader() {
    final String? accessToken = _tokenService.getAccessToken();
    debugPrint("_makeHeader : Have accessToken : ${accessToken != null}");
    return {
      'accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };
  }

  Future<http.Response> get(String path) async {
    final uri = Uri.parse('$_baseUrl/$path');
    debugPrint("Final Url :: $uri");
    return await _httpIntercept.handleRequest(
      () => _http.get(uri, headers: _makeHeader()),
      () => get(path),
    );
  }

  Future<http.Response> patch(String path, Map<String, dynamic> body) async {
    final uri = Uri.parse('$_baseUrl/$path');

    final String? accessToken = _tokenService.getAccessToken();

    // Set the headers
    final Map<String, String> header = {
      'accept': 'application/json',
      'Content-Type': 'application/merge-patch+json',
      'Authorization': 'Bearer $accessToken',
    };

    debugPrint("PATCH : uri :: $uri");
    debugPrint("header :: ${header.toString()}");
    debugPrint("body :: $body");

    return await _httpIntercept.handleRequest(
      () => _http.patch(uri, headers: header, body: jsonEncode(body)),
      () => post(path, body),
    );
  }

  Future<http.Response> post(String path, Map<String, dynamic> body) async {
    final uri = Uri.parse('$_baseUrl/$path');

    debugPrint("POST : uri :: $uri");
    debugPrint("header :: ${_makeHeader()}");
    debugPrint("body :: $body");

    return await _httpIntercept.handleRequest(
      () => _http.post(uri, headers: _makeHeader(), body: jsonEncode(body)),
      () => post(path, body),
    );
  }

  Future<http.StreamedResponse> uploadFile(
    String path,
    File file,
    String category,
  ) async {
    // Create the multipart request
    final uri = Uri.parse('$_baseUrl/$path?category=$category');
    final request = http.MultipartRequest('POST', uri);
    final String? accessToken = _tokenService.getAccessToken();

    // Set the headers
    request.headers.addAll({
      'accept': 'application/ld+json',
      'Authorization': 'Bearer $accessToken',
    });

    // Determine the MIME type of the file
    final mimeType = lookupMimeType(file.path) ?? 'application/octet-stream';

    // Attach the file to the request
    request.files.add(
      http.MultipartFile(
        'file', // Name of the field in the form-data
        file.readAsBytes().asStream(),
        file.lengthSync(),
        filename: basename(file.path),
        contentType: MediaType.parse(mimeType),
      ),
    );

    return await _httpIntercept.handleStreamRequest(
      () => request.send(),
      () => uploadFile(path, file, category),
    );
  }

  Future<http.Response> getOtp(String path, Map<String, dynamic> body) async {
    final response = await _http.post(
      Uri.parse('$_baseUrl/$path'),
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );
    await _tokenService.saveTokensFromResponse(response);
    return response;
  }

  Future<http.Response> userRegister(
    String path,
    Map<String, dynamic> body,
  ) async {
    final uri = Uri.parse('$_baseUrl/$path');

    final header = {
      'accept': 'application/ld+json',
      'Content-Type': 'application/ld+json',
    };

    debugPrint("POST : uri :: $uri");
    debugPrint("header :: ${header.toString()}");
    debugPrint("body :: $body");

    return await _httpIntercept.handleRequest(
      () => _http.post(uri, headers: header, body: jsonEncode(body)),
      () => post(path, body),
    );
  }

  Future<http.Response> userLogin(
    String path,
    Map<String, dynamic> body,
  ) async {
    final uri = Uri.parse('$_baseUrl/$path');

    final header = {
      'accept': 'application/ld+json',
      'Content-Type': 'application/ld+json',
    };

    debugPrint("POST : uri :: $uri");
    debugPrint("header :: ${header.toString()}");
    debugPrint("body :: $body");

    final response = await _http.post(
      uri,
      headers: header,
      body: jsonEncode(body),
    );

    await _tokenService.saveTokensFromResponse(response);

    return response;
  }

  Future<http.Response> oAuthLogin(String path) async {
    final uri = Uri.parse('$_baseUrl/$path');

    final header = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };

    debugPrint("Get : uri :: $uri");
    debugPrint("header :: ${header.toString()}");

    final response = await _http.get(uri, headers: header);

    await _tokenService.saveTokensFromResponse(response);

    return response;
  }

  Future<http.Response> sendResetCodeForForgotPassword(
    String path,
    Map<String, dynamic> body,
  ) async {
    final uri = Uri.parse('$_baseUrl/$path');

    final header = {
      'accept': 'application/ld+json',
      'Content-Type': 'application/ld+json',
    };

    debugPrint("POST : uri :: $uri");
    debugPrint("header :: ${header.toString()}");
    debugPrint("body :: $body");

    final response = await _http.post(
      uri,
      headers: header,
      body: jsonEncode(body),
    );

    return response;
  }

  Future<http.Response> changePasswordForForgotPassword(
    String path,
    Map<String, dynamic> body,
  ) async {
    final uri = Uri.parse('$_baseUrl/$path');

    final header = {
      'accept': 'application/ld+json',
      'Content-Type': 'application/ld+json',
    };

    debugPrint("POST : uri :: $uri");
    debugPrint("header :: ${header.toString()}");
    debugPrint("body :: $body");

    final response = await _http.post(
      uri,
      headers: header,
      body: jsonEncode(body),
    );

    return response;
  }

  Future<http.Response> userLogOut(String path) async {
    final uri = Uri.parse('$_baseUrl/$path');

    final header = {
      'accept': 'application/ld+json',
      'Content-Type': 'application/ld+json',
    };

    debugPrint("POST : uri :: $uri");
    debugPrint("header :: ${header.toString()}");

    // final response = await _http.post(uri, headers: header, body: {});

    await _tokenService.deleteTokens();

    //return fake success response
    final response = http.Response("", 204);

    return response;
  }

  // Future<http.Response?> patch(String path, Map<String, dynamic> body) async {
  //   try {
  //     final response = await _http.patch(
  //       Uri.parse('$_baseUrl/$path'),
  //       // headers: {
  //       //   'api_key': AppConfig.hireShareApiKey,
  //       //   'Content-Type': 'application/json',
  //       // },
  //       headers: {'Content-Type': 'application/json'},
  //       body: jsonEncode(body),
  //     );
  //     return response;
  //   } catch (e) {
  //     debugPrint(e.toString());
  //     return null;
  //   }
  // }

  Future<http.Response?> delete(String path) async {
    try {
      final response = await _http.delete(
        Uri.parse('$_baseUrl/$path'),
        // headers: {
        //   'api_key': AppConfig.hireShareApiKey,
        // },
      );
      return response;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
