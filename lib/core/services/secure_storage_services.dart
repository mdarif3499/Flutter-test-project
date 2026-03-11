import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage = Get.find<FlutterSecureStorage>();

  Future<void> write(String key, String value) async {
     debugPrint("SecureStorageService :: write :: Is have refresh Token : true");
    await _storage.write(key: key, value: value);
  }

  Future<String?> read(String key) async {
    final data = await _storage.read(key: key);
debugPrint("SecureStorageService :: read :: Is have refresh Token : ${data!=null}");
    return data;
  }

  Future<void> delete(String key) async {
    await _storage.delete(key: key);
  }
}
