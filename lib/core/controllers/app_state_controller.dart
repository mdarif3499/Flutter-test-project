import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:ijarahub/core/enums/user_roles_enum.dart';
import 'package:ijarahub/core/routing/app_routes.dart';
import '../enums/language_local_enums.dart';
import '../enums/short_enums.dart';
import '../error/exception_handler.dart';
import '../models/app_user_model.dart';
import '../services/app_state_service.dart';
import '../services/secure_storage_services.dart';

class AppStateController extends GetxController {
  final SecureStorageService _secureStorageService =
      Get.find<SecureStorageService>();

  final AppStateService _appStateService = Get.find<AppStateService>();

  // --- STATE VARIABLES ---
  final Rx<LanguageLocalEnums> _selectedLocale = LanguageLocalEnums.english.obs;
  final RxBool _isDarkMode = false.obs;
  final Rx<ThemeMode> _appThemeMode = ThemeMode.light.obs;
  final Rxn<AppUser> _appUser = Rxn<AppUser>();
  var isLoading = false.obs;


  // Reactive main config state
  final RxMap<String, dynamic> combinedState = RxMap<String, dynamic>({
    'appUser': null,
  });

  // --- GETTERS ---
  ThemeMode get isDarkTheme =>
      (_isDarkMode.value) ? ThemeMode.dark : ThemeMode.light;
  ThemeMode get appThemeMode => _appThemeMode.value;
  LanguageLocalEnums get currentLocale => _selectedLocale.value;
  bool get isDarkMode => _isDarkMode.value;
  AppUser? get appUser => _appUser.value;
  String? get userId => _appUser.value?.uid;



  // --- METHODS ---
  void changeLanguage(LanguageLocalEnums language) {
    _selectedLocale.value = language;
    Get.updateLocale(currentLocale.locale);
    debugPrint(
      "Current Local : ${currentLocale.locale.languageCode}-${currentLocale.locale.countryCode}",
    );
  }

  void toggleTheme([bool isSystem = false]) {
    bool isDark = !_isDarkMode.value;
    if (isSystem) {
      isDark = _isSystemSettingsDark();
    }

    _isDarkMode.value = isDark;

    final ThemeMode isDarkModeTheme = (_isDarkMode.value)
        ? ThemeMode.dark
        : ThemeMode.light;

    _appThemeMode.value = !isSystem ? isDarkModeTheme : ThemeMode.system;

    Get.changeThemeMode(isDarkTheme);
  }

  // Set a new user
  void setUser(AppUser? user) {
    _appUser.value = user;
    combinedState['appUser'] = appUser;

    debugPrint("setUser user :: $appUser");
  }

  bool _isSystemSettingsDark() {
    final brightness = SchedulerBinding
        .instance
        .platformDispatcher
        .platformBrightness; // <-- 2. THE FIX

    return (brightness == Brightness.dark);
  }

  //LogOut
  Future<void> logout() async {
    try {
      isLoading.value = true;
      await _appStateService.logout();
      isLoading.value = false;
      debugPrint("AppStateService: Calling _appStateController.logout");

      setUser(null);
    } catch (e) {
      isLoading.value = false;
      debugPrint(
        "AppStateService Logout Error: ${ExceptionHandler.exceptionHadle(e)}",
      );
      // Even if API logout fails, we might want to clear local state?
      // For now keeping it consistent with previous logic, but maybe we should force logout locally.

      setUser(null);
    }
  }

  // --- LIFECYCLE HOOK ---
  @override
  void onInit() {
    super.onInit();

    // --- 1. SET INITIAL THEME FROM SYSTEM ---

    _isDarkMode.value = _isSystemSettingsDark();

    // --- 2. SET INITIAL LOCALE FROM SYSTEM
    final deviceLocale = Get.deviceLocale;
    if (deviceLocale != null) {
      LanguageLocalEnums? local;
      final isSupported = LanguageLocalEnums.values.any((lang) {
        final val = lang.locale.languageCode == deviceLocale.languageCode;
        if (val) local = lang;
        return val;
      });

      if (isSupported && (local != null)) {
        _selectedLocale.value = local!;
        Get.updateLocale(currentLocale.locale);
      }
    }

    // --- Observe appUser changes
    ever(combinedState, (_) {
      final appUser = combinedState['appUser'] as AppUser?;

      if (appUser == null) {
        Get.offAllNamed(AppRoutes.authLanguageSelection);

      // Get.offAllNamed(AppRoutes.tenantHomeScreen2);

        return;
      } else {
        _handleRoutes(appUser: appUser);
      }
    });
  }

  void _handleRoutes({required AppUser appUser}) async {
    debugPrint("--- _handleRoutes called ---");
    debugPrint("AppUser: ${appUser.toJson()}");

    if (appUser.email != null && appUser.emailVerifiedAt == null) {
      Get.toNamed(
        AppRoutes.authEmailOtpVerification,
        arguments: {"email": appUser.email, "needtoSendOtp": 'true'},
      );
      return;
    }

    if (appUser.phoneNumber == null) {
      Get.toNamed(AppRoutes.authAddPhoneNumber);
      return;
    }

    if (appUser.phoneNumber != null && appUser.phoneVerifiedAt == null) {
      Get.toNamed(
        AppRoutes.authPhoneNumberOtpVerification,
        arguments: {
          "phoneNumber": appUser.phoneNumber,
          "needtoSendOtp": 'true',
        },
      );
      return;
    }

    final String? roleLocal = await _getUserRoleInLocal();
    debugPrint("roleLocal :: $roleLocal");
    UserRolesEnum roleLocalEnum = UserRolesEnum.user;

    if (roleLocal != null) {
      roleLocalEnum = UserRolesEnum.fromString(roleLocal);
    }

    if (appUser.userRoles.contains(UserRolesEnum.landLord) ||
        (roleLocalEnum == UserRolesEnum.landLord)) {
      if (appUser.survey == null ||
          appUser.survey!.propertyCount == null ||
          appUser.survey!.propertyCount == 0 ||
          appUser.survey!.unitCount == null ||
          appUser.survey!.unitCount == 0) {
        debugPrint("Navigating to: ${AppRoutes.authSurveyScreen1}");

        Get.offAllNamed(AppRoutes.authSurveyScreen1);
        return;
      }

      if (appUser.survey == null ||
          appUser.survey!.rentCollection == null ||
          appUser.survey!.rentCollection == "") {
        debugPrint("Navigating to: ${AppRoutes.authSurveyScreen2}");
        Get.offAllNamed(AppRoutes.authSurveyScreen2);
        return;
      }

      if (appUser.properties.isEmpty) {
        debugPrint("Navigating to: ${AppRoutes.authAddPropertyScreen}");
        Get.offAllNamed(AppRoutes.authAddPropertyScreen);
        return;
      }

      debugPrint("Navigating to: ${AppRoutes.home}");

      Get.offAllNamed(AppRoutes.home);
      return;
    }

    if ((appUser.userRoles.contains(UserRolesEnum.tenant) &&
        appUser.userRoles.contains(UserRolesEnum.propertyManager) &&
        appUser.userRoles.contains(UserRolesEnum.maintancePerson))) {
      Get.offAllNamed(AppRoutes.home);
      return;
    }

    if ((roleLocalEnum == UserRolesEnum.user)) {
      Get.offAllNamed(AppRoutes.authUserRoleSelector);
      return;
    }
    Get.offAllNamed(AppRoutes.home);
    return;
  }

  Future<String?> _getUserRoleInLocal() async {
    return await _secureStorageService.read(SecureStorageEnum.userRole.name);
  }
}
