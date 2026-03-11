import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ijarahub/features/auth/enums/verification_type_enums.dart';

import '../../../core/enums/short_enums.dart';
import '../../../core/enums/user_roles_enum.dart';
import '../../../core/error/response_exception_handling.dart';
import '../../../core/models/app_user_model.dart';
import '../../../core/models/app_user_survey_model.dart';
import '../../../core/models/property_model.dart';

import '../../../core/services/http_service.dart';
import 'package:http/http.dart' as http;

import '../../../core/services/secure_storage_services.dart';
import '../../../core/utils/server_response_handler.dart';

class AuthService {
  final _httpService = Get.find<HTTPService>();
  final SecureStorageService _secureStorageService =
      Get.find<SecureStorageService>();

  //Register
  Future<bool> registerUser({
    required String emailOrPhoneNumber,
    required String password,
    required String firstName,
    required String lastName,
    required String local,
    required VerificationTypeEnums verificationType,
  }) async {
    final routePath = "users";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final Map<String, dynamic> passingMap = {
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
        'local': local,
      };

      if (verificationType == VerificationTypeEnums.email) {
        passingMap["email"] = emailOrPhoneNumber;
      }

      if (verificationType == VerificationTypeEnums.phoneNumber) {
        passingMap["phone"] = emailOrPhoneNumber;
      }

      final http.Response response = await _httpService.userRegister(
        routePath,
        passingMap,
      );

      final Map<String, dynamic> responseMap =
          await ServerResponseHandler.serverResponseHandler(response)
              as Map<String, dynamic>;

      debugPrint("registerUser: responseMap : ${responseMap.toString()}");

      return true;
    });
  }

  //Otp Email Verify For Registration
  Future<void> otpEmailVerifyForLogin({required String otp}) async {
    final routePath = "email-verification-request";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService.post(routePath, {
        'code': otp,
      });

      ServerResponseHandler.serverResponseHandler(response);
    });
  }

  //Otp Verify For Registration
  Future<void> otpPhoneVerifyForLogin({required String otp}) async {
    final routePath = "phone-verification-request";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService.post(routePath, {
        'code': otp,
      });

      ServerResponseHandler.serverResponseHandler(response);
    });
  }

  //resend Email Otp for login
  Future<bool> resendEmailOtpForLogin({required String email}) async {
    final routePath = "email-verification-request-resend";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService.post(routePath, {
        'email': email,
      });

      ServerResponseHandler.serverResponseHandler(response);

      return true;
    });
  }

  //resend Otp for login
  Future<bool> resendPhoneOtpForLogin({required String phoneNumber}) async {
    final routePath = "phone-verification-request-resend";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService.post(routePath, {
        'phone': phoneNumber,
      });

      ServerResponseHandler.serverResponseHandler(response);

      return true;
    });
  }

  //Get user
  Future<AppUser?> getUserData() async {
    final routePath = "me";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService.get(routePath);

      final Map<String, dynamic> responseMap =
          ServerResponseHandler.serverResponseHandler(response);

      return AppUser.fromMap(responseMap);
    });
  }

  //Login
  Future<bool> loginUser({
    required VerificationTypeEnums verificationType,

    required String password,
    required String emailOrPhoneNumber,
  }) async {
    final routePath = "login_check";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final Map<String, dynamic> passingMap = {
        'username': emailOrPhoneNumber,
        'password': password,
      };

      final http.Response response = await _httpService.userLogin(
        routePath,
        passingMap,
      );

      final Map<String, dynamic> responseMap =
          await ServerResponseHandler.serverResponseHandler(response)
              as Map<String, dynamic>;

      debugPrint("loginUser: responseMap : ${responseMap.toString()}");

      return true;
    });
  }

  //userData upadte
  Future<AppUser?> userDataUpdate({
    required String uid,
    required String? email,
    required String? firstName,
    required String? lastName,
    required String? phoneNumber,
    required String? local,
    required List<String>? properties,
    required AppUserSurveyModel? survey,
  }) async {
    final routePath = "users/$uid";

    debugPrint("UserDataUpdateCalling !!!");

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final Map<String, dynamic> passingMap = {};

      if (email != null) passingMap['email'] = email;
      if (firstName != null) passingMap['firstName'] = firstName;
      if (lastName != null) passingMap['lastName'] = lastName;
      if (phoneNumber != null) passingMap['phone'] = phoneNumber;
      if (local != null) passingMap['local'] = local;
      if (properties != null && properties.isNotEmpty) {
        passingMap['properties'] = properties;
      }

      if (survey != null) passingMap['survey'] = survey.toMap();

      final http.Response response = await _httpService.patch(
        routePath,
        passingMap,
      );

      final Map<String, dynamic> responseMap =
          ServerResponseHandler.serverResponseHandler(response);

      return AppUser.fromMap(responseMap);
    });
  }

  //Otp verify for Fogot password.
  Future<bool> sendResetCodeForForgotPassword({
    required String emailOrPhoneNumber,
    required VerificationTypeEnums verificationType,
  }) async {
    final routePath = "reset-password-token";

    final Map<String, String> passingMap =
        (verificationType == VerificationTypeEnums.email)
        ? {'email': emailOrPhoneNumber}
        : {'phone': emailOrPhoneNumber};
    debugPrint("reset-password-token :: passingMap : $passingMap");

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService
          .sendResetCodeForForgotPassword(
            routePath,
            (verificationType == VerificationTypeEnums.email)
                ? {'email': emailOrPhoneNumber}
                : {'phone': emailOrPhoneNumber},
          );

      ServerResponseHandler.serverResponseHandler(response);

      return true;
    });
  }

  //Otp verify for Fogot password.
  Future<bool> changePasswordForForgotPassword({
    required String newPassword,
    required String resetCode,
  }) async {
    final routePath = "reset-password";

    debugPrint(
      "reset-password :: NewPass -> $newPassword, resetCode -> $resetCode",
    );

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService
          .changePasswordForForgotPassword(routePath, {
            'password': newPassword,
            'token': resetCode,
          });

      ServerResponseHandler.serverResponseHandler(response);

      return true;
    });
  }

  Future<bool> isUserHaveAnyProperty({required String uid}) async {
    final routePath = "user/$uid/properties";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService.get(routePath);

      final List<dynamic> responseMap =
          ServerResponseHandler.serverResponseHandler(response);

      debugPrint(
        "isPropertyEmpty Method In Auth service: responseMap : ${responseMap.toString()}",
      );

      if (responseMap.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    });
  }

  //Add a property
  Future<String?> addProperty({
    required String uid,
    required String address,
    required String city,
    required String state,
    required String zipCode,
  }) async {
    final routePath = "users/$uid/properties";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final Map<String, dynamic> passingMap = {
        'name': address,
        'address': address,
        'city': city,
        'state': state,
        'zipCode': zipCode,
      };

      debugPrint("addProperty: passingMap : ${passingMap.toString()}");

      final http.Response response = await _httpService.post(
        routePath,
        passingMap,
      );

      final Map<String, dynamic> responseMap =
          ServerResponseHandler.serverResponseHandler(response)
              as Map<String, dynamic>;

      debugPrint("addProperty: responseMap : ${responseMap.toString()}");

      return responseMap['id'] as String?;
    });
  }

  //Add s unit
  Future<String?> addUnit({
    required String propertyId,
    required String unitName,
    required int bedrooms,
    required int bathrooms,
    required int squareFeet,
    required String notes,
  }) async {
    final routePath = "properties/$propertyId/units";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final Map<String, dynamic> passingMap = {
        'name': unitName,
        'bedroomCount': bedrooms,
        'bathroomCount': bathrooms,
        'area': squareFeet,
        'note': notes,
      };

      debugPrint("addUnit: passingMap : ${passingMap.toString()}");

      final http.Response response = await _httpService.post(
        routePath,
        passingMap,
      );

      final Map<String, dynamic> responseMap =
          ServerResponseHandler.serverResponseHandler(response)
              as Map<String, dynamic>;

      debugPrint("addUnit: responseMap : ${responseMap.toString()}");

      return responseMap['id'] as String?;
    });
  }

  //Get Properties
  Future<List<PropertyModel>> getProperties({required String uid}) async {
    final routePath = "users/$uid/properties";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService.get(routePath);

      final List<dynamic> responseMap =
          ServerResponseHandler.serverResponseHandler(response);

      debugPrint(
        "getProperties Method In Auth service: responseMap : ${responseMap.toString()}",
      );

      return responseMap
          .map((property) => PropertyModel.fromMap(property))
          .toList();
    });
  }

  //Google Sign In
  //Login
  Future<bool> googleSignIn({required String? serverAuthCode}) async {
    final routePath = "connect/google/check?code=$serverAuthCode";

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService.oAuthLogin(routePath);

      final Map<String, dynamic> responseMap =
          await ServerResponseHandler.serverResponseHandler(response)
              as Map<String, dynamic>;

      debugPrint("googleSignIn: responseMap : ${responseMap.toString()}");

      return true;
    });
  }

  //Facebook Sign In
  Future<bool> facebookSignIn({required String authToken}) async {
    final routePath =
        "connect/facebook/check?code=$authToken"; // Assuming a similar endpoint for Facebook

    return ResponseExceptionHandling.responseExceptionHandling(() async {
      final http.Response response = await _httpService.oAuthLogin(routePath);

      final Map<String, dynamic> responseMap =
          await ServerResponseHandler.serverResponseHandler(response)
              as Map<String, dynamic>;

      debugPrint("facebookSignIn: responseMap : ${responseMap.toString()}");

      return true;
    });
  }

  //Store user selected user role in local

  Future<bool> setUserRoleInLocal({
    required UserRolesEnum selectedUserRole,
  }) async {
    return ResponseExceptionHandling.responseExceptionHandling(() async {
      return _setUserRoleInLocal(selectedUserRole: selectedUserRole);
    });
  }

  // Future<bool> deleteUserRoleInLocal() async {
  //   return ResponseExceptionHandling.responseExceptionHandling(() async {
  //     return _deleteUserRoleInLocal();
  //   });
  // }

  Future<bool> _setUserRoleInLocal({
    required UserRolesEnum selectedUserRole,
  }) async {
    await _secureStorageService.write(
      SecureStorageEnum.userRole.name,
      selectedUserRole.key,
    );

    return true;
  }
}
