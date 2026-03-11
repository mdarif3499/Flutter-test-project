// import 'dart:convert';
// import '../../config/auth_constants.dart';
// import '../../services/storage_services/st_service.dart';
// import 'response_model.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// class NetworkCaller {
//   // Colors for logging
//   final String reset = "\x1B[0m";
//   final String red = "\x1B[31m";
//   final String green = "\x1B[32m";
//   final String yellow = "\x1B[33m";
//   final String blue = "\x1B[34m";
//   final String magenta = "\x1B[35m";
//   final String cyan = "\x1B[36m";
//
//   final http.Client _client = http.Client();
//   final String _baseUrl = "https://ijarahub-app-dev.nexill.com/api";
//
//   Future<ResponseModel<T>> request<T>({
//     required String url,
//     required String method,
//     Map<String, dynamic>? body,
//     String? actionName,
//     bool showLog = false,
//     bool showAlert = false,
//     T Function(dynamic data)? fromJson,
//   }) async {
//     try {
//       final uri = Uri.parse(url);
//       final headers = await _buildHeaders();
//
//       if (showLog) {
//         print('$cyan➡️ [$actionName] $method: $uri$reset');
//         if (body != null) print('$magenta➡️ BODY: $body$reset');
//       }
//
//       late http.Response response;
//       response = await _sendRequest(method, uri, headers, body);
//
//       // Check if token expired (401)
//       if (response.statusCode == 401) {
//         if (showLog) print('$yellow🔄 Token expired, attempting refresh...$reset');
//
//         bool isRefreshed = await _handleRefreshToken();
//
//         if (isRefreshed) {
//           // Retry original request with new token
//           final newHeaders = await _buildHeaders();
//           response = await _sendRequest(method, uri, newHeaders, body);
//         } else {
//           // If refresh fails, logout user
//           sectionExpire();
//         }
//       }
//
//       return _handleResponse<T>(
//         response,
//         method: method,
//         actionName: actionName,
//         showLog: showLog,
//         showAlert: showAlert,
//         fromJson: fromJson,
//       );
//     } catch (e) {
//       return ResponseModel<T>(
//         isSuccess: false,
//         statusCode: 0,
//         message: e.toString(),
//         data: null,
//       );
//     }
//   }
//
//   /// Send actual HTTP request
//   Future<http.Response> _sendRequest(String method, Uri uri, Map<String, String> headers, Map<String, dynamic>? body) async {
//     switch (method.toUpperCase()) {
//       case 'GET': return await _client.get(uri, headers: headers);
//       case 'POST': return await _client.post(uri, headers: headers, body: jsonEncode(body));
//       case 'PUT': return await _client.put(uri, headers: headers, body: jsonEncode(body));
//       case 'PATCH': return await _client.patch(uri, headers: headers, body: jsonEncode(body));
//       case 'DELETE': return await _client.delete(uri, headers: headers);
//       default: throw Exception('Invalid HTTP method: $method');
//     }
//   }
//
//   /// Logic to refresh token
//   /// Logic to refresh token based on your specific response format
//   Future<bool> _handleRefreshToken() async {
//     try {
//       final refreshToken = STService().getData(AuthConstants.refreshToken);
//       if (refreshToken == null || refreshToken.isEmpty) return false;
//
//       // Using http post to get new tokens
//       final response = await http.post(
//         Uri.parse("${_baseUrl}token/refresh"),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({"refresh_token": refreshToken}),
//       );
//
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final Map<String, dynamic> decoded = jsonDecode(response.body);
//
//         // Extracting keys based on your response: "token" and "refresh_token"
//         final String? newAccessToken = decoded['token'];
//         final String? newRefreshToken = decoded['refresh_token'];
//
//         if (newAccessToken != null) {
//           // Save new access token
//           await STService().saveData(AuthConstants.accessToken, newAccessToken);
//
//           // Save new refresh token if provided in response
//           if (newRefreshToken != null) {
//             await STService().saveData(AuthConstants.refreshToken, newRefreshToken);
//           }
//
//           print('$green✅ Token Refreshed Successfully$reset');
//           return true;
//         }
//       }
//
//       print('$red❌ Refresh Token Failed: ${response.statusCode}$reset');
//       return false;
//     } catch (e) {
//       print('$red🔴 Refresh Token Error: $e$reset');
//       return false;
//     }
//   }
//
//   Future<Map<String, String>> _buildHeaders() async {
//     final token = STService().getData(AuthConstants.accessToken);
//     final headers = {'Content-Type': 'application/json'};
//     if (token != null && token.isNotEmpty) {
//       // API common practice: headers['Authorization'] = 'Bearer $token';
//       headers['Authorization'] = token;
//     }
//     return headers;
//   }
//
//   Future<ResponseModel<T>> _handleResponse<T>(
//       http.Response response, {
//         required String method,
//         String? actionName,
//         bool showLog = false,
//         bool showAlert = false,
//         T Function(dynamic data)? fromJson,
//       }) async {
//     dynamic decoded;
//     try {
//       decoded = jsonDecode(response.body);
//     } catch (_) {
//       decoded = response.body;
//     }
//
//     if (showLog) {
//       String statusColor = (response.statusCode >= 200 && response.statusCode < 300)
//           ? green
//           : (response.statusCode == 401 ? yellow : red);
//
//       print('$blue➡️ [$actionName] METHOD: $method$reset');
//       print('$statusColor⬅️ [$actionName] STATUS: ${response.statusCode}$reset');
//       print('$blue⬅️ RESPONSE: $decoded$reset');
//     }
//
//     if (response.statusCode >= 200 && response.statusCode < 300) {
//       T? parsedData;
//       if (fromJson != null) parsedData = fromJson(decoded);
//
//       if (showAlert && decoded is Map && decoded['message'] != null) {
//         _showAlert(title: 'Success', message: decoded['message']);
//       }
//
//       return ResponseModel<T>(
//         isSuccess: true,
//         statusCode: response.statusCode,
//         data: parsedData,
//         message: decoded is Map ? decoded['message'] : null,
//       );
//     }
//
//     if (showAlert && decoded is Map && decoded['message'] != null) {
//       _showAlert(title: 'Error', message: decoded['message']);
//     }
//
//     return ResponseModel<T>(
//       isSuccess: false,
//       statusCode: response.statusCode,
//       message: decoded is Map ? decoded['message'] ?? 'Something went wrong' : decoded.toString(),
//       data: null,
//     );
//   }
//
//   void _showAlert({required String title, required String message}) {
//     Get.defaultDialog(
//       title: title,
//       middleText: message,
//       textConfirm: 'OK',
//       onConfirm: () => Get.back(),
//       barrierDismissible: false,
//     );
//   }
//
//   void sectionExpire() {
//     STService().removeData(AuthConstants.accessToken);
//     STService().removeData(AuthConstants.refreshToken);
//     // Get.offAllNamed(AppRoutes.loginScreen);
//   }
//
//   void dispose() {
//     _client.close();
//   }
// }
//
// /*
// final dataModel = DataModel().obs; // Rx for state
// final dataList = <Data>[].obs;
//
// Future<void> fetchServices() async {
//   final response = await NetworkCaller().request<DataModel>(
//     url: 'https://example.com/api/services',
//     method: HttpMethod.GET,            // GET method
//     actionName: 'Fetch Services',
//     showLog: true,            // console log show
//     showAlert: true,          // success/error alert show
//     fromJson: (json) => DataModel.fromJson(json), // type-safe parsing
//   );
//
//   if (response.isSuccess && response.data != null) {
//     dataModel.value = response.data!;
//     dataList.value = dataModel.value.data ?? [];
//   } else {
//     print('Error: ${response.message}');
//   }
// }
//
//
//
// Future<void> addService(String name, int price) async {
//   final body = {
//     'name': name,
//     'price': price,
//   };
//
//   final response = await NetworkCaller().request<DataModel>(
//     url: 'https://example.com/api/services',
//     method: HttpMethod.POST,           // POST method
//     body: body,               // body optional, map pass
//     actionName: 'Add Service',
//     showLog: true,
//     showAlert: true,
//     fromJson: (json) => DataModel.fromJson(json),
//   );
//
//   if (response.isSuccess && response.data != null) {
//     dataModel.value = response.data!;
//     dataList.value = dataModel.value.data ?? [];
//   } else {
//     print('Error: ${response.message}');
//   }
// }
//
// */

import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../token_service.dart';
import 'response_model.dart';

class NetworkCaller {
  // Logger colors
  final String reset = "\x1B[0m";
  final String red = "\x1B[31m";
  final String green = "\x1B[32m";
  final String yellow = "\x1B[33m";
  final String blue = "\x1B[34m";
  final String magenta = "\x1B[35m";
  final String cyan = "\x1B[36m";

  final http.Client _client = http.Client();
  final TokenService _tokenService = Get.find<TokenService>();

  final String _baseUrl = "https://ijarahub-app-dev.nexill.com/api";

  // =========================
  // MAIN REQUEST METHOD
  // =========================
  Future<ResponseModel<T>> request<T>({
    required String url,
    required String method,
    Map<String, dynamic>? body,
    String? actionName,
    bool showLog = false,
    bool showAlert = false,
    T Function(dynamic data)? fromJson,
  }) async {
    try {
      final uri = Uri.parse(url);
      final headers = await _buildHeaders();

      if (showLog) {
        print('$cyan➡️ [$actionName] $method: $uri$reset');
        if (body != null) {
          print('$magenta➡️ BODY: $body$reset');
        }
      }

      http.Response response =
      await _sendRequest(method, uri, headers, body);

      // =========================
      // HANDLE TOKEN EXPIRE
      // =========================
      if (response.statusCode == 401) {
        if (showLog) {
          print('$yellow🔄 Access token expired, refreshing...$reset');
        }

        bool refreshed = await _handleRefreshToken();

        if (refreshed) {
          final newHeaders = await _buildHeaders();
          response = await _sendRequest(
            method,
            uri,
            newHeaders,
            body,
          );
        } else {
          sectionExpire();
        }
      }

      return _handleResponse<T>(
        response,
        method: method,
        actionName: actionName,
        showLog: showLog,
        showAlert: showAlert,
        fromJson: fromJson,
      );
    } catch (e) {
      return ResponseModel<T>(
        isSuccess: false,
        statusCode: 0,
        message: e.toString(),
        data: null,
      );
    }
  }

  // =========================
  // SEND HTTP REQUEST
  // =========================
  Future<http.Response> _sendRequest(
      String method,
      Uri uri,
      Map<String, String> headers,
      Map<String, dynamic>? body,
      ) async {
    switch (method.toUpperCase()) {
      case 'GET':
        return await _client.get(uri, headers: headers);
      case 'POST':
        return await _client.post(
          uri,
          headers: headers,
          body: jsonEncode(body),
        );
      case 'PUT':
        return await _client.put(
          uri,
          headers: headers,
          body: jsonEncode(body),
        );
      case 'PATCH':
        return await _client.patch(
          uri,
          headers: headers,
          body: jsonEncode(body),
        );
      case 'DELETE':
        return await _client.delete(uri, headers: headers);
      default:
        throw Exception('Invalid HTTP method: $method');
    }
  }

  // =========================
  // BUILD HEADERS
  // =========================
  Future<Map<String, String>> _buildHeaders() async {
    final accessToken = _tokenService.getAccessToken();

    final headers = <String, String>{
      'Content-Type': 'application/json',
    };

    if (accessToken != null && accessToken.isNotEmpty) {
      headers['Authorization'] = 'Bearer $accessToken';
      // Bearer→
    }

    return headers;
  }

  // =========================
  // REFRESH TOKEN LOGIC
  // =========================
  Future<bool> _handleRefreshToken() async {
    try {
      final refreshToken = await _tokenService.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) return false;

      final response = await http.post(
        Uri.parse("$_baseUrl/token/refresh"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "refresh_token": refreshToken,
        }),
      );

      if (response.statusCode == 200 ||
          response.statusCode == 201) {
        final decoded = jsonDecode(response.body);

        final String? newAccessToken = decoded['token'];
        final String? newRefreshToken = decoded['refresh_token'];

        if (newAccessToken != null) {
          await _tokenService.saveAccessToken(newAccessToken);

          if (newRefreshToken != null) {
            await _tokenService.saveTokensFromResponse(response);
          }

          print('$green✅ Token refreshed successfully$reset');
          return true;
        }
      }

      print('$red❌ Refresh token failed$reset');
      return false;
    } catch (e) {
      print('$red🔴 Refresh token error: $e$reset');
      return false;
    }
  }

  // =========================
  // HANDLE API RESPONSE
  // =========================
  Future<ResponseModel<T>> _handleResponse<T>(
      http.Response response, {
        required String method,
        String? actionName,
        bool showLog = false,
        bool showAlert = false,
        T Function(dynamic data)? fromJson,
      }) async {
    dynamic decoded;
    try {
      decoded = jsonDecode(response.body);
    } catch (_) {
      decoded = response.body;
    }

    if (showLog) {
      String statusColor =
      (response.statusCode >= 200 && response.statusCode < 300)
          ? green
          : (response.statusCode == 401 ? yellow : red);

      print('$blue➡️ [$actionName] METHOD: $method$reset');
      print(
          '$statusColor⬅️ STATUS: ${response.statusCode}$reset');
      print('$blue⬅️ RESPONSE: $decoded$reset');
    }

    if (response.statusCode >= 200 &&
        response.statusCode < 300) {
      T? parsedData;
      if (fromJson != null) {
        parsedData = fromJson(decoded);
      }

      if (showAlert &&
          decoded is Map &&
          decoded['message'] != null) {
        _showAlert(
          title: 'Success',
          message: decoded['message'],
        );
      }

      return ResponseModel<T>(
        isSuccess: true,
        statusCode: response.statusCode,
        data: parsedData,
        message:
        decoded is Map ? decoded['message'] : null,
      );
    }

    if (showAlert &&
        decoded is Map &&
        decoded['message'] != null) {
      _showAlert(
        title: 'Error',
        message: decoded['message'],
      );
    }

    return ResponseModel<T>(
      isSuccess: false,
      statusCode: response.statusCode,
      message: decoded is Map
          ? decoded['message'] ?? 'Something went wrong'
          : decoded.toString(),
      data: null,
    );
  }

  // =========================
  // ALERT DIALOG
  // =========================
  void _showAlert({
    required String title,
    required String message,
  }) {
    Get.defaultDialog(
      title: title,
      middleText: message,
      textConfirm: 'OK',
      onConfirm: () => Get.back(),
      barrierDismissible: false,
    );
  }

  // =========================
  // SESSION EXPIRE
  // =========================
  void sectionExpire() async {
    await _tokenService.deleteTokens();
    // Get.offAllNamed(AppRoutes.loginScreen);
  }

  void dispose() {
    _client.close();
  }



  // =========================
// MULTIPART REQUEST (FILE UPLOAD)
// =========================
Future<ResponseModel<T>> multipartRequest<T>({
  required String url,
  required String method, // POST / PUT
  required Map<String, String> fields,
  required List<http.MultipartFile> files,
  String? actionName,
  bool showLog = false,
  T Function(dynamic data)? fromJson,
}) async {
  try {
    final uri = Uri.parse(url);
    final accessToken = _tokenService.getAccessToken();

    final request = http.MultipartRequest(method, uri);

    // headers
    if (accessToken != null && accessToken.isNotEmpty) {
      request.headers['Authorization'] = 'Bearer $accessToken';
    }

    // fields
    request.fields.addAll(fields);

    // files
    request.files.addAll(files);

    if (showLog) {
      print('$cyan➡️ [$actionName] MULTIPART $method: $uri$reset');
      print('$magenta➡️ FIELDS: $fields$reset');
      print('$magenta➡️ FILES: ${files.map((e) => e.filename)}$reset');
    }

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    return _handleResponse<T>(
      response,
      method: method,
      actionName: actionName,
      showLog: showLog,
      fromJson: fromJson,
    );
  } catch (e) {
    return ResponseModel<T>(
      isSuccess: false,
      statusCode: 0,
      message: e.toString(),
      data: null,
    );
  }
}

}
