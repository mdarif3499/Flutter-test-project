import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ijarahub/core/utils/show_alert_dialog_box.dart';
import 'package:ijarahub/features/auth/utils/google_login_helper.dart';
// import 'package:ijarahub/features/auth/utils/tokens.dart'; // No longer needed

import '../../../core/controllers/app_state_controller.dart';
import '../../../core/enums/user_roles_enum.dart';
import '../../../core/error/exception_handler.dart';
import '../../../core/models/app_user_model.dart';
import '../../../core/models/app_user_survey_model.dart';
import '../../../core/models/property_model.dart';
import '../../../core/models/unit_model.dart';
import '../../../core/routing/app_routes.dart';
import '../../../l10n/app_localizations.dart';

import '../enums/verification_type_enums.dart';
import '../services/auth_service.dart';

class AuthController extends GetxController {
  static AuthController get find => Get.find();
  var isLoading = false.obs;
  var errorMessage = ''.obs;

  final RxString _phoneDialCode = "+971".obs;
  final RxString _initialCountrySelection = 'AE'.obs;
  final RxList<String> _favoriteCountryCodes = ['+971', 'AE'].obs;
  final RxBool _isPhoneRegister = true.obs;

  final RxString _userEmailOrPhoneNumber = "".obs;
  final RxList<PropertyModel> properties = <PropertyModel>[].obs;

  String get phoneDialCode => _phoneDialCode.value;
  String get initialCountrySelection => _initialCountrySelection.value;
  List<String> get favoriteCountryCodes => _favoriteCountryCodes;
  bool get isPhoneRegister => _isPhoneRegister.value;
  String get userEmailOrPhoneNumber => _userEmailOrPhoneNumber.value;

  void setPhoneDialCode(String value) => _phoneDialCode.value = value;
  void setInitialCountrySelection(String value) =>
      _initialCountrySelection.value = value;
  void setFavoriteCountryCodes(List<String> value) =>
      _favoriteCountryCodes.value = value;
  void setIsPhoneRegister(bool value) => _isPhoneRegister.value = value;
  void setUserEmailOrPhoneNumber(String value) =>
      _userEmailOrPhoneNumber.value = value;

  final AuthService _authService = Get.find<AuthService>();
  final AppStateController _appStateController = Get.find<AppStateController>();

  @override
  void onInit() {
    getUserData();

    super.onInit();
  }

  //Register
  Future<void> registerUser({
    required String emailOrPhoneNumber,
    required String password,
    required String firstName,
    required String lastName,
    required BuildContext context,
    required String local,
    required VerificationTypeEnums verificationType,
  }) async {
    try {
      isLoading.value = true;
      await _authService.registerUser(
        emailOrPhoneNumber: emailOrPhoneNumber,
        firstName: firstName,
        lastName: lastName,
        password: password,
        verificationType: verificationType,
        local: local,
      );

      await _authService.loginUser(
        emailOrPhoneNumber: emailOrPhoneNumber,
        password: password,
        verificationType: verificationType,
      );
      await Future.delayed(Duration(seconds: 3));

      isLoading.value = false;

      if (verificationType == VerificationTypeEnums.email) {
        Get.toNamed(
          AppRoutes.authEmailOtpVerification,
          arguments: {"email": emailOrPhoneNumber, "needtoSendOtp": 'false'},
        );
      }
      if (verificationType == VerificationTypeEnums.phoneNumber) {
        Get.toNamed(
          AppRoutes.authPhoneNumberOtpVerification,
          arguments: {
            "phoneNumber": emailOrPhoneNumber,
            "needtoSendOtp": 'false',
          },
        );
      }
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }
    }
  }

  //Login
  Future<void> loginUser({
    required VerificationTypeEnums verificationType,
    required String emailOrPhoneNumber,
    required String password,
    required BuildContext context,
  }) async {
    try {
      isLoading.value = true;
      await _authService.loginUser(
        emailOrPhoneNumber: emailOrPhoneNumber,
        password: password,
        verificationType: verificationType,
      );
      final appUser = await _authService.getUserData();
      isLoading.value = false;
      debugPrint(
        "AuthController: Calling _appStateController.setUser from loginUser",
      );
      _appStateController.setUser(appUser);
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }
    }
  }

  //Otp Email Verify In Login
  Future<void> otpEmailVerifyForLogin({
    required String otp,
    required BuildContext context,
  }) async {
    try {
      isLoading.value = true;

      await _authService.otpEmailVerifyForLogin(otp: otp.toLowerCase());

      final appUser = await _authService.getUserData();

      isLoading.value = false;
      debugPrint(
        "AuthController: Calling _appStateController.setUser from otpVerifyForLogin",
      );
      _appStateController.setUser(appUser);
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }
    }
  }

  //Otp Email Verify In Login
  Future<void> otpPhoneVerifyForLogin({
    required String otp,
    required BuildContext context,
  }) async {
    try {
      isLoading.value = true;

      await _authService.otpPhoneVerifyForLogin(otp: otp.toLowerCase());

      final appUser = await _authService.getUserData();

      isLoading.value = false;

      _appStateController.setUser(appUser);
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }
    }
  }

  //Resend Email Otp In Login
  Future<bool> resendEmailOtpForLogin({
    required String email,
    required BuildContext context,
  }) async {
    try {
      isLoading.value = true;
      final isDone = await _authService.resendEmailOtpForLogin(email: email);
      isLoading.value = false;

      return isDone;
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }

      return false;
    }
  }

  //Resend Email Otp In Login
  Future<bool> resendPhoneOtpForLogin({
    required String phoneNumber,
    required BuildContext context,
  }) async {
    try {
      isLoading.value = true;
      final isDone = await _authService.resendPhoneOtpForLogin(
        phoneNumber: phoneNumber,
      );
      isLoading.value = false;

      return isDone;
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }

      return false;
    }
  }

  //Forgot Password Reset Code Send
  Future<void> sendResetCodeForForgotPassword({
    required String emailOrPhoneNumber,
    required BuildContext context,
    required VerificationTypeEnums verificationType,
    required String phoneNumberWithoutCountryCode,
  }) async {
    try {
      isLoading.value = true;
      final isDone = await _authService.sendResetCodeForForgotPassword(
        emailOrPhoneNumber: emailOrPhoneNumber,
        verificationType: verificationType,
      );

      isLoading.value = false;

      if (isDone) {
        setUserEmailOrPhoneNumber(phoneNumberWithoutCountryCode);
        Get.toNamed(AppRoutes.newPasswordScreen);
      }
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }
    }
  }

  //Forgot password change password
  Future<void> changePasswordForForgotPassword({
    required String newPassword,
    required String resetCode,
    required String emailOrPhoneNumber,
    required BuildContext context,
  }) async {
    try {
      isLoading.value = true;
      final isDone = await _authService.changePasswordForForgotPassword(
        newPassword: newPassword,
        resetCode: resetCode,
      );

      isLoading.value = false;

      if (isDone) {
        setUserEmailOrPhoneNumber(emailOrPhoneNumber);
        Get.offAllNamed(AppRoutes.loginWithEmailPassword);
      }
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }
    }
  }

  // //LogOut
  // Future<void> logout() async {
  //   try {
  //     isLoading.value = true;
  //     await _authService.logout();
  //     isLoading.value = false;
  //     debugPrint("AuthController: Calling _appStateController.logout");
  //     _appStateController.logout();
  //   } catch (e) {
  //     errorMessage.value = ExceptionHandler.exceptionHadle(e);
  //   }
  // }

  //User Data
  Future<void> getUserData() async {
    try {
      isLoading.value = true;
      AppUser? user = await getUserDataDirect();

      if (user != null) {
        debugPrint(
          "AuthController: Calling _appStateController.setUser from getUserData",
        );
        _appStateController.setUser(user);

        //  await _isUserPropertyEmpty(uid: user.uid);
        //_appStateController.triggerCombinedState();
      }
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      _appStateController.setUser(null);
    }
  }

  //Get user data direct

  Future<AppUser?> getUserDataDirect() async {
    try {
      return await _authService.getUserData();
    } catch (e) {
      rethrow;
    }
  }

  //User data update
  Future<AppUser?> userDataUpdate({
    required String uid,
    String? email,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? local,
    List<String>? properties,
    AppUserSurveyModel? survey,
  }) async {
    try {
      isLoading.value = true;
      final AppUser? user = await _authService.userDataUpdate(
        uid: uid,
        email: email,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        local: local,
        properties: properties,
        survey: survey,
      );
      isLoading.value = false;

      if (user != null) {
        debugPrint(
          "AuthController: Calling _appStateController.setUser from userDataUpdate",
        );
        _appStateController.setUser(user);
      }

      return user;
    } catch (e) {
      isLoading.value = false;

      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      return null;
    }
  }

  //Add Property
  Future<bool> addProperty({
    required String uid,
    required String address,
    required String city,
    required String state,
    required String zipCode,
    required List<UnitModel> units,
  }) async {
    try {
      isLoading.value = true;
      bool isDone = false;
      final String? unitId = await _authService.addProperty(
        uid: uid,
        address: address,
        city: city,
        state: state,
        zipCode: zipCode,
      );

      if (unitId != null) {
        units.map((unit) async {
          await _authService.addUnit(
            propertyId: unitId,
            unitName: unit.unitName,
            bedrooms: unit.bedrooms,
            bathrooms: unit.bathrooms,
            squareFeet: unit.squareFeet,
            notes: unit.notes,
          );
        }).toList();

        isDone = true;
      }

      isLoading.value = false;

      if (isDone) {
        Get.offAndToNamed(AppRoutes.authStart);
        // Refresh properties after adding a new one
        if (_appStateController.appUser != null) {
          fetchProperties(uid: _appStateController.appUser!.uid);
        }
      }

      return isDone;
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      return false;
    }
  }

  //Fetch Properties
  Future<void> fetchProperties({required String uid}) async {
    try {
      isLoading.value = true;
      final List<PropertyModel> fetchedProperties = await _authService
          .getProperties(uid: uid);
      properties.assignAll(fetchedProperties);
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      // Handle error appropriately, e.g., show a snackbar
    }
  }

  //Get Properties (private, used by fetchProperties)
  // Future<List<PropertyModel>> _getProperties({required String uid}) async {
  //   try {
  //     final List<PropertyModel> properties = await _authService.getProperties(
  //       uid: uid,
  //     );
  //     return properties;
  //   } catch (e) {
  //     rethrow; // Re-throw to be caught by fetchProperties
  //   }
  // }

  //Google Sign In
  Future<void> googleSignIn({required BuildContext context}) async {
    try {
      final googleAuthCode = await GoogleLoginHelper().login();
      isLoading.value = true;
      await _authService.googleSignIn(
        serverAuthCode: googleAuthCode.serverAuthCode,
      );
      final appUser = await _authService.getUserData();
      isLoading.value = false;

      _appStateController.setUser(appUser);
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }
    }
  }

  Future<void> setUserRoleInLocal({
    required BuildContext context,
    required UserRolesEnum selectedUserRole,
  }) async {
    try {
      isLoading.value = true;
      await _authService.setUserRoleInLocal(selectedUserRole: selectedUserRole);
      final appUser = await _authService.getUserData();
      isLoading.value = false;

      _appStateController.setUser(appUser);
    } catch (e) {
      isLoading.value = false;
      errorMessage.value = ExceptionHandler.exceptionHadle(e);
      if (context.mounted) {
        final appLocalizations = AppLocalizations.of(context)!;
        showAlertDialog(
          context: context,
          content: errorMessage.value,
          rgtBtn: ShowAlertDBtnCtn(btnTitle: appLocalizations.commonOk),
        );
      }
    }
  }
}
