import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ijarahub/core/error/exception.dart';
import 'package:ijarahub/l10n/app_localizations.dart';

import '../../../core/config/app_config.dart';
import 'tokens.dart';

class GoogleLoginHelper {
  static GoogleSignIn? _googleSignIn;
  static bool _isInitialized = false;
  static GoogleSignInAccount? _currentUser;

  // Client IDs for different platforms
  final String _webClientId = AppConfig.googleWebClientIdForOAuth;
  final String _iosClientId = AppConfig.googleIOSClientIdForOAuth;

  GoogleSignInAccount? get currentUser => _currentUser;
  bool get isSignedIn => _currentUser != null;

  Future<void> _initialize() async {
    if (_isInitialized) return;

    try {
      _googleSignIn = GoogleSignIn.instance;
      await _googleSignIn!.initialize(
        clientId: GetPlatform.isWeb
            ? _webClientId
            : GetPlatform.isIOS
            ? _iosClientId
            : null,
        serverClientId: _webClientId,
      );

      _isInitialized = true;
    } catch (e) {
      debugPrint("_initialize >>>> $e");
      throw getGoogleOAuthErrorMessage(e);
    }
  }

  // Ensure GoogleSignIn is always initialized before use
  Future<void> _ensureInitialized() async {
    if (!_isInitialized) {
      await _initialize();
    }
  }

  Future<GoogleAuthTokens> login() async {
    try {
      await _ensureInitialized();

      // Check if authenticate is supported on this platform
      if (!_googleSignIn!.supportsAuthenticate()) {
        throw AppLocalizations.of(Get.context!)!.authGoogleSignInNotSupported;
      }

      final List<String> scopes = ['email', 'profile'];

      final GoogleSignInAccount googleUser = await _googleSignIn!.authenticate(
        scopeHint: scopes, // Specify required scopes
      );

      _currentUser = googleUser;

      final GoogleSignInServerAuthorization? serverAuth = await googleUser
          .authorizationClient
          .authorizeServer(scopes);

      final serverAuthCode = serverAuth?.serverAuthCode;

      return GoogleAuthTokens(serverAuthCode: serverAuthCode);
    } on GoogleSignInException catch (e) {
      throw LocalPackageException(message: getGoogleOAuthErrorMessage(e));
    } catch (e) {
      throw LocalPackageException(message: getGoogleOAuthErrorMessage(e));
    }
  }

  // Helper method to get user-friendly error messages
  String getGoogleOAuthErrorMessage(dynamic exception) {
    if (exception is GoogleSignInException) {
      switch (exception.code.name) {
        case 'canceled':
          return AppLocalizations.of(Get.context!)!.authGoogleSignInCancelled;
        case 'interrupted':
          return AppLocalizations.of(Get.context!)!.authGoogleSignInInterrupted;
        case 'clientConfigurationError':
          return AppLocalizations.of(
            Get.context!,
          )!.authGoogleSignInClientConfigError;
        case 'providerConfigurationError':
          return AppLocalizations.of(
            Get.context!,
          )!.authGoogleSignInProviderConfigError;
        case 'uiUnavailable':
          return AppLocalizations.of(
            Get.context!,
          )!.authGoogleSignInUiUnavailable;
        case 'userMismatch':
          return AppLocalizations.of(
            Get.context!,
          )!.authGoogleSignInUserMismatch;
        case 'networkError':
          return AppLocalizations.of(
            Get.context!,
          )!.authGoogleSignInNetworkError;
        case 'internalError':
          return AppLocalizations.of(
            Get.context!,
          )!.authGoogleSignInInternalError;
        case 'serviceError':
          return AppLocalizations.of(
            Get.context!,
          )!.authGoogleSignInServiceError;
        default:
          return AppLocalizations.of(
            Get.context!,
          )!.authGoogleSignInUnexpectedError;
      }
    }
    if (exception is PlatformException) {
      return AppLocalizations.of(
        Get.context!,
      )!.authGoogleSignInPlatformException(exception.message ?? 'unknown');
    }
    if (exception is String) {
      return exception;
    }
    return AppLocalizations.of(
      Get.context!,
    )!.authGoogleSignInUnknownError(exception.toString());
  }
}
