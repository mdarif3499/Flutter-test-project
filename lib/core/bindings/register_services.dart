import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:ijarahub/features/auth/controllers/auth_controller.dart';

import '../../features/auth/services/auth_service.dart';
import '../services/app_state_service.dart';
import '../controllers/app_state_controller.dart';
import '../config/app_config.dart';
import '../services/http_intercept.dart';
import '../services/http_service.dart';
import '../services/in_memory_store.dart';
import 'package:http/http.dart' as http;

import '../services/secure_storage_services.dart';
import '../services/token_service.dart';

Future<void> registerServices() async {
  final secureSharedPreferences = FlutterSecureStorage();
  Get.put(http.Client());
  Get.put(secureSharedPreferences);
  Get.put(InMemoryStore());
  Get.put(SecureStorageService());
  Get.put(TokenService());

  Get.put(HttpIntercept(baseUrl: AppConfig.backendUrl));
  Get.put(HTTPService(baseUrl: AppConfig.backendUrl));
  Get.put(AppStateService());
  Get.put(AppStateController());

  Get.put(AuthService());

  Get.put(AuthController());
}
