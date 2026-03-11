import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../enums/short_enums.dart';
import 'in_memory_store.dart';
import 'secure_storage_services.dart';

class TokenService {
  final InMemoryStore _inMemoryStore = Get.find<InMemoryStore>();
  final SecureStorageService _secureStorageService =
      Get.find<SecureStorageService>();

  String? getAccessToken() {
    return _inMemoryStore.getData(TokensEnum.accessToken.name) as String?;
  }

  Future<String?> getRefreshToken() async {
    return await _secureStorageService.read(TokensEnum.refreshToken.name);
  }

  Future<bool> saveTokensFromResponse(http.Response response) async {
    debugPrint("saveTokensFromResponse :: body :: ${response.body}");
    bool returnvalue = false;
    final data = jsonDecode(response.body);

    debugPrint("saveTokensFromResponse :: data :: $data");

    if (response.statusCode == 200 &&
        data != null &&
        data is Map<String, dynamic>) {
      final accessToken = data['token'];
      final refreshToken = data['refresh_token'];

      if (accessToken != null && refreshToken != null) {
        _inMemoryStore.setData(TokensEnum.accessToken.name, accessToken);
        await _secureStorageService.write(
          TokensEnum.refreshToken.name,
          refreshToken,
        );
        returnvalue = true;
      }
      return returnvalue;
    }
    return returnvalue;
  }

  Future<void> saveAccessToken(String token) async {
    _inMemoryStore.setData(TokensEnum.accessToken.name, token);
  }

  //delete all tokens
  Future<void> deleteTokens() async {
    _inMemoryStore.deleteData(TokensEnum.accessToken.name);
    await _secureStorageService.delete(TokensEnum.refreshToken.name);
  }
}
