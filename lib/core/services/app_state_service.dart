import 'package:get/get.dart';
//import 'package:http/http.dart' as http;
//import 'package:ijarahub/core/services/http_service.dart';

import '../enums/short_enums.dart';
import '../error/response_exception_handling.dart';
//import '../utils/server_response_handler.dart';
import 'secure_storage_services.dart';

class AppStateService extends GetxService {
  // final _httpService = Get.find<HTTPService>();
  final SecureStorageService _secureStorageService =
      Get.find<SecureStorageService>();

  //LogOut
  Future<bool> logout() async {
    // final routePath = "logout";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      // final http.Response response = await _httpService.userLogOut(routePath);

      // await ServerResponseHandler.serverResponseHandler(response);

      return await _deleteUserRoleInLocal();
    });
  }

  Future<bool> _deleteUserRoleInLocal() async {
    await _secureStorageService.delete(SecureStorageEnum.userRole.name);

    return true;
  }
}
