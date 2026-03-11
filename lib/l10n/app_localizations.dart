import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('ar', 'AE'),
    Locale('en'),
    Locale('en', 'GB'),
    Locale('hi'),
    Locale('hi', 'IN'),
  ];

  /// No description provided for @commonGetStarted.
  ///
  /// In en_GB, this message translates to:
  /// **'Get Started'**
  String get commonGetStarted;

  /// Greeting message with a dynamic name
  ///
  /// In en_GB, this message translates to:
  /// **'Hello {name}'**
  String commonHello(Object name);

  /// No description provided for @commonContinueButton.
  ///
  /// In en_GB, this message translates to:
  /// **'Continue'**
  String get commonContinueButton;

  /// No description provided for @commonCancelButton.
  ///
  /// In en_GB, this message translates to:
  /// **'Cancel'**
  String get commonCancelButton;

  /// No description provided for @commonOk.
  ///
  /// In en_GB, this message translates to:
  /// **'OK'**
  String get commonOk;

  /// No description provided for @commonAlertTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Alert!'**
  String get commonAlertTitle;

  /// No description provided for @commonSignOut.
  ///
  /// In en_GB, this message translates to:
  /// **'Sign Out'**
  String get commonSignOut;

  /// No description provided for @authLogin.
  ///
  /// In en_GB, this message translates to:
  /// **'Login'**
  String get authLogin;

  /// No description provided for @authRegister.
  ///
  /// In en_GB, this message translates to:
  /// **'Register'**
  String get authRegister;

  /// No description provided for @authOrContinueWith.
  ///
  /// In en_GB, this message translates to:
  /// **'Or continue with'**
  String get authOrContinueWith;

  /// No description provided for @authEnterMobileNumber.
  ///
  /// In en_GB, this message translates to:
  /// **'Enter Mobile Number'**
  String get authEnterMobileNumber;

  /// No description provided for @authForgotPassword.
  ///
  /// In en_GB, this message translates to:
  /// **'Forgot Password?'**
  String get authForgotPassword;

  /// No description provided for @authDontHaveAnAccount.
  ///
  /// In en_GB, this message translates to:
  /// **'Don\'t have an account?'**
  String get authDontHaveAnAccount;

  /// No description provided for @authTypeYourEmail.
  ///
  /// In en_GB, this message translates to:
  /// **'Type Your Email'**
  String get authTypeYourEmail;

  /// No description provided for @authOrLoginWith.
  ///
  /// In en_GB, this message translates to:
  /// **'Or login with'**
  String get authOrLoginWith;

  /// No description provided for @authEmailAndPassword.
  ///
  /// In en_GB, this message translates to:
  /// **'Email & Password'**
  String get authEmailAndPassword;

  /// No description provided for @authEmail.
  ///
  /// In en_GB, this message translates to:
  /// **'Email'**
  String get authEmail;

  /// No description provided for @authPassword.
  ///
  /// In en_GB, this message translates to:
  /// **'Password'**
  String get authPassword;

  /// No description provided for @authTypeYourPassword.
  ///
  /// In en_GB, this message translates to:
  /// **'Type Your Password'**
  String get authTypeYourPassword;

  /// No description provided for @authHaveAnAccount.
  ///
  /// In en_GB, this message translates to:
  /// **'Have an account?'**
  String get authHaveAnAccount;

  /// No description provided for @authFirstName.
  ///
  /// In en_GB, this message translates to:
  /// **'First Name'**
  String get authFirstName;

  /// No description provided for @authLastName.
  ///
  /// In en_GB, this message translates to:
  /// **'Last Name'**
  String get authLastName;

  /// No description provided for @authPhoneNumber.
  ///
  /// In en_GB, this message translates to:
  /// **'Phone Number'**
  String get authPhoneNumber;

  /// No description provided for @authEmailVerificationTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Email Verification'**
  String get authEmailVerificationTitle;

  /// No description provided for @authVerificationCodeSent.
  ///
  /// In en_GB, this message translates to:
  /// **'Verification code sent successfully'**
  String get authVerificationCodeSent;

  /// No description provided for @authOtpMessagePart1.
  ///
  /// In en_GB, this message translates to:
  /// **'We have sent a verification code to your'**
  String get authOtpMessagePart1;

  /// No description provided for @authOtpMessagePart2.
  ///
  /// In en_GB, this message translates to:
  /// **'email address. Type the code below to verify your email address.'**
  String get authOtpMessagePart2;

  /// No description provided for @authOtpMessagePart2Phone.
  ///
  /// In en_GB, this message translates to:
  /// **'phone number. Type the code below to verify your phone number.'**
  String get authOtpMessagePart2Phone;

  /// No description provided for @authVerificationCodeTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Verification Code'**
  String get authVerificationCodeTitle;

  /// No description provided for @authResendCodeButton.
  ///
  /// In en_GB, this message translates to:
  /// **'Re-send Code'**
  String get authResendCodeButton;

  /// No description provided for @authSurveyWelcomeMessage.
  ///
  /// In en_GB, this message translates to:
  /// **'Welcome to IjaraHub, {firstName} 👋'**
  String authSurveyWelcomeMessage(String firstName);

  /// No description provided for @authSurveyIntro.
  ///
  /// In en_GB, this message translates to:
  /// **'Let\'s start by getting to know you.'**
  String get authSurveyIntro;

  /// No description provided for @authSurveyPropertyCountLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Your own properties'**
  String get authSurveyPropertyCountLabel;

  /// No description provided for @authSurveyPropertyCountQuestion.
  ///
  /// In en_GB, this message translates to:
  /// **'How many properties do you own?'**
  String get authSurveyPropertyCountQuestion;

  /// No description provided for @authSurveyUnitCountLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Your own units'**
  String get authSurveyUnitCountLabel;

  /// No description provided for @authSurveyUnitCountQuestion.
  ///
  /// In en_GB, this message translates to:
  /// **'How many units do you own?'**
  String get authSurveyUnitCountQuestion;

  /// No description provided for @authLanguageSelectionSelectLanguageTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Select Language'**
  String get authLanguageSelectionSelectLanguageTitle;

  /// No description provided for @authLanguageSelectionLanguageEnglish.
  ///
  /// In en_GB, this message translates to:
  /// **'English'**
  String get authLanguageSelectionLanguageEnglish;

  /// No description provided for @authForgotPasswordTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Forgot Password'**
  String get authForgotPasswordTitle;

  /// No description provided for @authForgotPasswordMessage.
  ///
  /// In en_GB, this message translates to:
  /// **'Type your registered email address or phone number. We will send a verification code to your registered contact.'**
  String get authForgotPasswordMessage;

  /// No description provided for @authSendButton.
  ///
  /// In en_GB, this message translates to:
  /// **'Send'**
  String get authSendButton;

  /// No description provided for @authNewPasswordTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'New Password'**
  String get authNewPasswordTitle;

  /// No description provided for @authNewPasswordEmailMessage.
  ///
  /// In en_GB, this message translates to:
  /// **'We have sent a reset code to your registered contact. Please check your email or phone for the code.'**
  String get authNewPasswordEmailMessage;

  /// No description provided for @authChangePasswordButton.
  ///
  /// In en_GB, this message translates to:
  /// **'Change Password'**
  String get authChangePasswordButton;

  /// No description provided for @authTypeNewPasswordLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Type your new password'**
  String get authTypeNewPasswordLabel;

  /// No description provided for @authTypeResetCodeLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Type your reset code'**
  String get authTypeResetCodeLabel;

  /// No description provided for @authResetCodeTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Reset Code'**
  String get authResetCodeTitle;

  /// No description provided for @errorsAlertDialogArgumentError.
  ///
  /// In en_GB, this message translates to:
  /// **'ARGUMENT FAIL: Alert Dialog Left Button Function Not Implement!'**
  String get errorsAlertDialogArgumentError;

  /// No description provided for @authAddYourPhoneNumber.
  ///
  /// In en_GB, this message translates to:
  /// **'Add Your Phone Number'**
  String get authAddYourPhoneNumber;

  /// No description provided for @authAddPhoneNumberMessage.
  ///
  /// In en_GB, this message translates to:
  /// **'Add your phone number to get started.'**
  String get authAddPhoneNumberMessage;

  /// No description provided for @authTypeYourPhoneNumber.
  ///
  /// In en_GB, this message translates to:
  /// **'Type Your Phone Number'**
  String get authTypeYourPhoneNumber;

  /// No description provided for @commonAdd.
  ///
  /// In en_GB, this message translates to:
  /// **'Add'**
  String get commonAdd;

  /// No description provided for @propertyNoUnitsAddedYet.
  ///
  /// In en_GB, this message translates to:
  /// **'No units added yet'**
  String get propertyNoUnitsAddedYet;

  /// No description provided for @propertyAddUnit.
  ///
  /// In en_GB, this message translates to:
  /// **'Add Unit'**
  String get propertyAddUnit;

  /// No description provided for @propertyEnterPropertiesAndUnits.
  ///
  /// In en_GB, this message translates to:
  /// **'Enter properties and units'**
  String get propertyEnterPropertiesAndUnits;

  /// No description provided for @propertyAddProperty.
  ///
  /// In en_GB, this message translates to:
  /// **'Add Property'**
  String get propertyAddProperty;

  /// No description provided for @commonAddress.
  ///
  /// In en_GB, this message translates to:
  /// **'Address'**
  String get commonAddress;

  /// No description provided for @commonCity.
  ///
  /// In en_GB, this message translates to:
  /// **'City'**
  String get commonCity;

  /// No description provided for @commonState.
  ///
  /// In en_GB, this message translates to:
  /// **'State'**
  String get commonState;

  /// No description provided for @commonZipCode.
  ///
  /// In en_GB, this message translates to:
  /// **'Zip Code'**
  String get commonZipCode;

  /// No description provided for @authStartScreenTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Welcome to IjaraHub'**
  String get authStartScreenTitle;

  /// No description provided for @authStartScreenFinishSetupUnit.
  ///
  /// In en_GB, this message translates to:
  /// **'Finish setting up your unit'**
  String get authStartScreenFinishSetupUnit;

  /// No description provided for @authStartScreenStartCollectingRent.
  ///
  /// In en_GB, this message translates to:
  /// **'Start collecting rent'**
  String get authStartScreenStartCollectingRent;

  /// No description provided for @authStartScreenAddTenants.
  ///
  /// In en_GB, this message translates to:
  /// **'Add tenants'**
  String get authStartScreenAddTenants;

  /// No description provided for @authStartScreenShareSignLeases.
  ///
  /// In en_GB, this message translates to:
  /// **'Share & sign leases'**
  String get authStartScreenShareSignLeases;

  /// No description provided for @authStartScreenSetupPaymentAccounts.
  ///
  /// In en_GB, this message translates to:
  /// **'Setup payment accounts'**
  String get authStartScreenSetupPaymentAccounts;

  /// No description provided for @authStartScreenEasilyCollectRent.
  ///
  /// In en_GB, this message translates to:
  /// **'Easily collect rent'**
  String get authStartScreenEasilyCollectRent;

  /// No description provided for @commonOr.
  ///
  /// In en_GB, this message translates to:
  /// **'Or'**
  String get commonOr;

  /// No description provided for @authStartScreenAddAnotherProperty.
  ///
  /// In en_GB, this message translates to:
  /// **'Add another property'**
  String get authStartScreenAddAnotherProperty;

  /// No description provided for @authStartScreenYourProperties.
  ///
  /// In en_GB, this message translates to:
  /// **'Your Properties'**
  String get authStartScreenYourProperties;

  /// No description provided for @unitNameNumber.
  ///
  /// In en_GB, this message translates to:
  /// **'Unit Name/Number'**
  String get unitNameNumber;

  /// No description provided for @unitNumberOfBedrooms.
  ///
  /// In en_GB, this message translates to:
  /// **'Number of Bedrooms'**
  String get unitNumberOfBedrooms;

  /// No description provided for @unitNumberOfBathrooms.
  ///
  /// In en_GB, this message translates to:
  /// **'Number of Bathrooms'**
  String get unitNumberOfBathrooms;

  /// No description provided for @unitSquareFeet.
  ///
  /// In en_GB, this message translates to:
  /// **'Square Feet'**
  String get unitSquareFeet;

  /// No description provided for @commonNotes.
  ///
  /// In en_GB, this message translates to:
  /// **'Notes'**
  String get commonNotes;

  /// No description provided for @authEmailOrPhoneNumber.
  ///
  /// In en_GB, this message translates to:
  /// **'Email or Phone Number'**
  String get authEmailOrPhoneNumber;

  /// No description provided for @authPhoneToggle.
  ///
  /// In en_GB, this message translates to:
  /// **'Phone'**
  String get authPhoneToggle;

  /// No description provided for @authEmailToggle.
  ///
  /// In en_GB, this message translates to:
  /// **'Email'**
  String get authEmailToggle;

  /// No description provided for @propertiesTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Properties'**
  String get propertiesTitle;

  /// No description provided for @commonLoading.
  ///
  /// In en_GB, this message translates to:
  /// **'Loading..'**
  String get commonLoading;

  /// No description provided for @authGoogleSignInNotSupported.
  ///
  /// In en_GB, this message translates to:
  /// **'Google Sign-In on this Platform does not support authenticate method'**
  String get authGoogleSignInNotSupported;

  /// No description provided for @authGoogleSignInCancelled.
  ///
  /// In en_GB, this message translates to:
  /// **'Sign-in was cancelled. Please try again if you want to continue.'**
  String get authGoogleSignInCancelled;

  /// No description provided for @authGoogleSignInInterrupted.
  ///
  /// In en_GB, this message translates to:
  /// **'Sign-in was interrupted. Please try again.'**
  String get authGoogleSignInInterrupted;

  /// No description provided for @authGoogleSignInClientConfigError.
  ///
  /// In en_GB, this message translates to:
  /// **'There is a configuration issue with Google Sign-In. Please contact support.'**
  String get authGoogleSignInClientConfigError;

  /// No description provided for @authGoogleSignInProviderConfigError.
  ///
  /// In en_GB, this message translates to:
  /// **'Google Sign-In is currently unavailable. Please try again later.'**
  String get authGoogleSignInProviderConfigError;

  /// No description provided for @authGoogleSignInUiUnavailable.
  ///
  /// In en_GB, this message translates to:
  /// **'Google Sign-In is currently unavailable. Please try again later.'**
  String get authGoogleSignInUiUnavailable;

  /// No description provided for @authGoogleSignInUserMismatch.
  ///
  /// In en_GB, this message translates to:
  /// **'There was an issue with your account. Please sign out and try again.'**
  String get authGoogleSignInUserMismatch;

  /// No description provided for @authGoogleSignInNetworkError.
  ///
  /// In en_GB, this message translates to:
  /// **'A network error occurred during Google Sign-In. Please check your connection and try again.'**
  String get authGoogleSignInNetworkError;

  /// No description provided for @authGoogleSignInInternalError.
  ///
  /// In en_GB, this message translates to:
  /// **'An internal error occurred during Google Sign-In. Please try again.'**
  String get authGoogleSignInInternalError;

  /// No description provided for @authGoogleSignInServiceError.
  ///
  /// In en_GB, this message translates to:
  /// **'A service error occurred during Google Sign-In. Please try again later.'**
  String get authGoogleSignInServiceError;

  /// No description provided for @authGoogleSignInUnexpectedError.
  ///
  /// In en_GB, this message translates to:
  /// **'An unexpected error occurred during Google Sign-In. Please try again.'**
  String get authGoogleSignInUnexpectedError;

  /// No description provided for @authGoogleSignInPlatformException.
  ///
  /// In en_GB, this message translates to:
  /// **'PlatformException : {message}'**
  String authGoogleSignInPlatformException(String message);

  /// No description provided for @authGoogleSignInUnknownError.
  ///
  /// In en_GB, this message translates to:
  /// **'Unknown error: {error}'**
  String authGoogleSignInUnknownError(String error);

  /// No description provided for @authFacebookLoginCancelledOrFailed.
  ///
  /// In en_GB, this message translates to:
  /// **'Facebook login cancelled or failed'**
  String get authFacebookLoginCancelledOrFailed;

  /// No description provided for @authFacebookLoginInvalidState.
  ///
  /// In en_GB, this message translates to:
  /// **'Invalid state parameter - possible CSRF attack'**
  String get authFacebookLoginInvalidState;

  /// No description provided for @authFacebookLoginAuthFailed.
  ///
  /// In en_GB, this message translates to:
  /// **'Auth failed: {error}'**
  String authFacebookLoginAuthFailed(String error);

  /// No description provided for @authFacebookLoginFailed.
  ///
  /// In en_GB, this message translates to:
  /// **'Facebook Login failed: {error}'**
  String authFacebookLoginFailed(String error);

  /// No description provided for @authSurveyPleaseSelectDate.
  ///
  /// In en_GB, this message translates to:
  /// **'Please select a date'**
  String get authSurveyPleaseSelectDate;

  /// No description provided for @authSurveyReadyToCollectRent.
  ///
  /// In en_GB, this message translates to:
  /// **'Ready to Collect Rent? ✨'**
  String get authSurveyReadyToCollectRent;

  /// No description provided for @authSurveyTeamReadyToAssist.
  ///
  /// In en_GB, this message translates to:
  /// **'We have a team ready to assist you and get you started collecting rent!'**
  String get authSurveyTeamReadyToAssist;

  /// No description provided for @authSurveyStartingOn.
  ///
  /// In en_GB, this message translates to:
  /// **'Starting on'**
  String get authSurveyStartingOn;

  /// No description provided for @authSurveyNotInNearFuture.
  ///
  /// In en_GB, this message translates to:
  /// **'Not in the near future'**
  String get authSurveyNotInNearFuture;

  /// No description provided for @propertyUnitsCount.
  ///
  /// In en_GB, this message translates to:
  /// **'{count} Units'**
  String propertyUnitsCount(int count);

  /// No description provided for @propertyTotalRent.
  ///
  /// In en_GB, this message translates to:
  /// **'\${amount}'**
  String propertyTotalRent(String amount);

  /// No description provided for @propertyOccupiedUnitsCount.
  ///
  /// In en_GB, this message translates to:
  /// **'{count} Occupied'**
  String propertyOccupiedUnitsCount(int count);

  /// No description provided for @propertyVacantUnitsCount.
  ///
  /// In en_GB, this message translates to:
  /// **'{count} Vacant'**
  String propertyVacantUnitsCount(int count);

  /// No description provided for @homeGreeting.
  ///
  /// In en_GB, this message translates to:
  /// **'Good Morning, {firstName} 👋'**
  String homeGreeting(String firstName);

  /// No description provided for @commonUnits.
  ///
  /// In en_GB, this message translates to:
  /// **'Units'**
  String get commonUnits;

  /// No description provided for @authRoleSelectorTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Which best describes you?'**
  String get authRoleSelectorTitle;

  /// No description provided for @commonSelectLanguage.
  ///
  /// In en_GB, this message translates to:
  /// **'Select Language'**
  String get commonSelectLanguage;

  /// No description provided for @commonLanguageEnglish.
  ///
  /// In en_GB, this message translates to:
  /// **'English'**
  String get commonLanguageEnglish;

  /// No description provided for @commonLanguageHindi.
  ///
  /// In en_GB, this message translates to:
  /// **'हिंदी'**
  String get commonLanguageHindi;

  /// No description provided for @commonLanguageArabic.
  ///
  /// In en_GB, this message translates to:
  /// **'العربية'**
  String get commonLanguageArabic;

  /// No description provided for @roleLandlord.
  ///
  /// In en_GB, this message translates to:
  /// **'Landlord'**
  String get roleLandlord;

  /// No description provided for @roleTenant.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenant'**
  String get roleTenant;

  /// No description provided for @rolePropertyManager.
  ///
  /// In en_GB, this message translates to:
  /// **'Property Manager'**
  String get rolePropertyManager;

  /// No description provided for @roleMaintenancePerson.
  ///
  /// In en_GB, this message translates to:
  /// **'Maintenance Person'**
  String get roleMaintenancePerson;

  /// No description provided for @roleUser.
  ///
  /// In en_GB, this message translates to:
  /// **'User'**
  String get roleUser;

  /// No description provided for @roleUnknown.
  ///
  /// In en_GB, this message translates to:
  /// **'Unknown Role'**
  String get roleUnknown;

  /// No description provided for @maintenanceDemoMode.
  ///
  /// In en_GB, this message translates to:
  /// **'You are in Demo Mode'**
  String get maintenanceDemoMode;

  /// No description provided for @maintenanceExitDemo.
  ///
  /// In en_GB, this message translates to:
  /// **'Exit Demo'**
  String get maintenanceExitDemo;

  /// No description provided for @maintenancePendingRequests.
  ///
  /// In en_GB, this message translates to:
  /// **'Pending Maintenance Requests'**
  String get maintenancePendingRequests;

  /// No description provided for @maintenanceCompleted.
  ///
  /// In en_GB, this message translates to:
  /// **'Mark Complete'**
  String get maintenanceCompleted;

  /// No description provided for @maintenanceAdd.
  ///
  /// In en_GB, this message translates to:
  /// **'Add'**
  String get maintenanceAdd;

  /// No description provided for @maintenanceSortFilter.
  ///
  /// In en_GB, this message translates to:
  /// **'Sort & Filter'**
  String get maintenanceSortFilter;

  /// No description provided for @maintenanceExportData.
  ///
  /// In en_GB, this message translates to:
  /// **'Export Data'**
  String get maintenanceExportData;

  /// No description provided for @maintenanceSave.
  ///
  /// In en_GB, this message translates to:
  /// **'Save Changes'**
  String get maintenanceSave;

  /// No description provided for @maintenanceDetails.
  ///
  /// In en_GB, this message translates to:
  /// **'Details'**
  String get maintenanceDetails;

  /// No description provided for @maintenanceVideo.
  ///
  /// In en_GB, this message translates to:
  /// **'Video'**
  String get maintenanceVideo;

  /// No description provided for @maintenanceTenants.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenants'**
  String get maintenanceTenants;

  /// No description provided for @maintenanceStatus.
  ///
  /// In en_GB, this message translates to:
  /// **'Status'**
  String get maintenanceStatus;

  /// No description provided for @maintenanceAssignTo.
  ///
  /// In en_GB, this message translates to:
  /// **'Assign to'**
  String get maintenanceAssignTo;

  /// No description provided for @maintenanceCategory.
  ///
  /// In en_GB, this message translates to:
  /// **'Category'**
  String get maintenanceCategory;

  /// No description provided for @maintenancePriority.
  ///
  /// In en_GB, this message translates to:
  /// **'Priority'**
  String get maintenancePriority;

  /// No description provided for @maintenanceLaborCost.
  ///
  /// In en_GB, this message translates to:
  /// **'Labor Cost'**
  String get maintenanceLaborCost;

  /// No description provided for @maintenanceMaterialsCost.
  ///
  /// In en_GB, this message translates to:
  /// **'Materials Cost'**
  String get maintenanceMaterialsCost;

  /// No description provided for @maintenanceDelete.
  ///
  /// In en_GB, this message translates to:
  /// **'Delete'**
  String get maintenanceDelete;

  /// No description provided for @addMaintenanceTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Add new maintenance request'**
  String get addMaintenanceTitle;

  /// No description provided for @addMaintenanceSubTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Select the property and unit for which you would like to create new maintenance request.'**
  String get addMaintenanceSubTitle;

  /// No description provided for @addressLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Address'**
  String get addressLabel;

  /// No description provided for @unitLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Unit'**
  String get unitLabel;

  /// No description provided for @commonContinue.
  ///
  /// In en_GB, this message translates to:
  /// **'Continue'**
  String get commonContinue;

  /// No description provided for @provideDetailsTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Provide request details'**
  String get provideDetailsTitle;

  /// No description provided for @descriptionLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Description'**
  String get descriptionLabel;

  /// No description provided for @descriptionHint.
  ///
  /// In en_GB, this message translates to:
  /// **'ex. Broken sidewalk'**
  String get descriptionHint;

  /// No description provided for @priorityLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Priority'**
  String get priorityLabel;

  /// No description provided for @categoryLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Category'**
  String get categoryLabel;

  /// No description provided for @accessInstructionsLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Latchel Vendor Access Instructions'**
  String get accessInstructionsLabel;

  /// No description provided for @notesLabel.
  ///
  /// In en_GB, this message translates to:
  /// **'Notes'**
  String get notesLabel;

  /// No description provided for @commonBack.
  ///
  /// In en_GB, this message translates to:
  /// **'Back'**
  String get commonBack;

  /// No description provided for @commonSaveContinue.
  ///
  /// In en_GB, this message translates to:
  /// **'Save & Continue'**
  String get commonSaveContinue;

  /// No description provided for @current.
  ///
  /// In en_GB, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @movingIn.
  ///
  /// In en_GB, this message translates to:
  /// **'Moving In'**
  String get movingIn;

  /// No description provided for @leaving.
  ///
  /// In en_GB, this message translates to:
  /// **'Leaving'**
  String get leaving;

  /// No description provided for @accepted.
  ///
  /// In en_GB, this message translates to:
  /// **'Accepted'**
  String get accepted;

  /// No description provided for @rejected.
  ///
  /// In en_GB, this message translates to:
  /// **'Rejected'**
  String get rejected;

  /// No description provided for @prior.
  ///
  /// In en_GB, this message translates to:
  /// **'Prior'**
  String get prior;

  /// No description provided for @tenants.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenants'**
  String get tenants;

  /// No description provided for @leaseStarting.
  ///
  /// In en_GB, this message translates to:
  /// **'Lease Starting'**
  String get leaseStarting;

  /// No description provided for @leaseEnding.
  ///
  /// In en_GB, this message translates to:
  /// **'Lease Ending'**
  String get leaseEnding;

  /// No description provided for @previousTenants.
  ///
  /// In en_GB, this message translates to:
  /// **'Previous Tenants'**
  String get previousTenants;

  /// No description provided for @renter.
  ///
  /// In en_GB, this message translates to:
  /// **'Renter'**
  String get renter;

  /// No description provided for @address.
  ///
  /// In en_GB, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @unit.
  ///
  /// In en_GB, this message translates to:
  /// **'Unit'**
  String get unit;

  /// No description provided for @rent.
  ///
  /// In en_GB, this message translates to:
  /// **'Rent'**
  String get rent;

  /// No description provided for @add.
  ///
  /// In en_GB, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @addTenantDescription.
  ///
  /// In en_GB, this message translates to:
  /// **'Connect tenant to your unit to let them start paying rent. Send an email invite and a text message now or later.'**
  String get addTenantDescription;

  /// No description provided for @property.
  ///
  /// In en_GB, this message translates to:
  /// **'Property'**
  String get property;

  /// No description provided for @selectProperty.
  ///
  /// In en_GB, this message translates to:
  /// **'Select Property'**
  String get selectProperty;

  /// No description provided for @selectUnit.
  ///
  /// In en_GB, this message translates to:
  /// **'Select Unit'**
  String get selectUnit;

  /// No description provided for @tenantFirstName.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenant\'s First Name'**
  String get tenantFirstName;

  /// No description provided for @enterFirstName.
  ///
  /// In en_GB, this message translates to:
  /// **'Enter first name'**
  String get enterFirstName;

  /// No description provided for @firstNameEmptyError.
  ///
  /// In en_GB, this message translates to:
  /// **'First name cannot be empty'**
  String get firstNameEmptyError;

  /// No description provided for @tenantLastName.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenant\'s Last Name'**
  String get tenantLastName;

  /// No description provided for @enterLastName.
  ///
  /// In en_GB, this message translates to:
  /// **'Enter last name'**
  String get enterLastName;

  /// No description provided for @lastNameEmptyError.
  ///
  /// In en_GB, this message translates to:
  /// **'Last name cannot be empty'**
  String get lastNameEmptyError;

  /// No description provided for @startAt.
  ///
  /// In en_GB, this message translates to:
  /// **'Start At'**
  String get startAt;

  /// No description provided for @mmDdYyyy.
  ///
  /// In en_GB, this message translates to:
  /// **'MM/DD/YYYY'**
  String get mmDdYyyy;

  /// No description provided for @sendInvite.
  ///
  /// In en_GB, this message translates to:
  /// **'Send Invite'**
  String get sendInvite;

  /// No description provided for @now.
  ///
  /// In en_GB, this message translates to:
  /// **'Now'**
  String get now;

  /// No description provided for @inviteNowSubtitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Connect and let tenant pay any charges you setup, sign leases, and receive messages'**
  String get inviteNowSubtitle;

  /// No description provided for @skipLater.
  ///
  /// In en_GB, this message translates to:
  /// **'Skip / Later'**
  String get skipLater;

  /// No description provided for @inviteLaterSubtitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Not ready to invite yet? Create profile and set up charges now. Send invite when ready.'**
  String get inviteLaterSubtitle;

  /// No description provided for @tenantEmail.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenant\'s Email'**
  String get tenantEmail;

  /// No description provided for @enterEmail.
  ///
  /// In en_GB, this message translates to:
  /// **'Enter email address'**
  String get enterEmail;

  /// No description provided for @emailEmptyError.
  ///
  /// In en_GB, this message translates to:
  /// **'Email cannot be empty'**
  String get emailEmptyError;

  /// No description provided for @tenantPhoneNumber.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenant\'s Phone Number'**
  String get tenantPhoneNumber;

  /// No description provided for @cancel.
  ///
  /// In en_GB, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @addTenant.
  ///
  /// In en_GB, this message translates to:
  /// **'Add Tenant'**
  String get addTenant;

  /// No description provided for @success.
  ///
  /// In en_GB, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @tenantAddedSuccess.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenant added successfully'**
  String get tenantAddedSuccess;

  /// No description provided for @error.
  ///
  /// In en_GB, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @tenantDetails.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenant Details'**
  String get tenantDetails;

  /// No description provided for @details.
  ///
  /// In en_GB, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @documents.
  ///
  /// In en_GB, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @charges.
  ///
  /// In en_GB, this message translates to:
  /// **'Charges'**
  String get charges;

  /// No description provided for @status.
  ///
  /// In en_GB, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @currentTenant.
  ///
  /// In en_GB, this message translates to:
  /// **'Current Tenant'**
  String get currentTenant;

  /// No description provided for @tenantAppInstalled.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenant App Installed'**
  String get tenantAppInstalled;

  /// No description provided for @connectedToUnit.
  ///
  /// In en_GB, this message translates to:
  /// **'Ed is connected to unit 🙌'**
  String get connectedToUnit;

  /// No description provided for @autopayInactive.
  ///
  /// In en_GB, this message translates to:
  /// **'Autopay Inactive'**
  String get autopayInactive;

  /// No description provided for @autopaySubtitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Ask Ed to turn on autopay'**
  String get autopaySubtitle;

  /// No description provided for @generalInfo.
  ///
  /// In en_GB, this message translates to:
  /// **'General Info'**
  String get generalInfo;

  /// No description provided for @editDetails.
  ///
  /// In en_GB, this message translates to:
  /// **'Edit Details'**
  String get editDetails;

  /// No description provided for @firstName.
  ///
  /// In en_GB, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en_GB, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @email.
  ///
  /// In en_GB, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @phone.
  ///
  /// In en_GB, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @payments.
  ///
  /// In en_GB, this message translates to:
  /// **'Payments'**
  String get payments;

  /// No description provided for @notes.
  ///
  /// In en_GB, this message translates to:
  /// **'Notes'**
  String get notes;

  /// No description provided for @leaseDetails.
  ///
  /// In en_GB, this message translates to:
  /// **'Lease Details'**
  String get leaseDetails;

  /// No description provided for @leaseStartDate.
  ///
  /// In en_GB, this message translates to:
  /// **'Lease Start Date'**
  String get leaseStartDate;

  /// No description provided for @leaseEndDate.
  ///
  /// In en_GB, this message translates to:
  /// **'Lease End Date'**
  String get leaseEndDate;

  /// No description provided for @monthlyRent.
  ///
  /// In en_GB, this message translates to:
  /// **'Monthly Lease Rent'**
  String get monthlyRent;

  /// No description provided for @viewUnit.
  ///
  /// In en_GB, this message translates to:
  /// **'View Unit'**
  String get viewUnit;

  /// No description provided for @screenTenant.
  ///
  /// In en_GB, this message translates to:
  /// **'Screen Tenant'**
  String get screenTenant;

  /// No description provided for @unlinkTenant.
  ///
  /// In en_GB, this message translates to:
  /// **'Unlink Tenant'**
  String get unlinkTenant;

  /// No description provided for @unlinkDialogTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Unlink Tenant from Unit?'**
  String get unlinkDialogTitle;

  /// No description provided for @unlinkDialogContent.
  ///
  /// In en_GB, this message translates to:
  /// **'This will remove the tenant from the unit and mark the tenant as a Prior tenant.'**
  String get unlinkDialogContent;

  /// No description provided for @unlink.
  ///
  /// In en_GB, this message translates to:
  /// **'Unlink'**
  String get unlink;

  /// No description provided for @uploadFile.
  ///
  /// In en_GB, this message translates to:
  /// **'Upload File'**
  String get uploadFile;

  /// No description provided for @signLeaseFeatureTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Tenants can now sign leases & other documents! ✨'**
  String get signLeaseFeatureTitle;

  /// No description provided for @uploadPdfDesc.
  ///
  /// In en_GB, this message translates to:
  /// **'Upload a PDF file of your lease to send a signature request.'**
  String get uploadPdfDesc;

  /// No description provided for @addCharge.
  ///
  /// In en_GB, this message translates to:
  /// **'Add Charge'**
  String get addCharge;

  /// No description provided for @requestPayment.
  ///
  /// In en_GB, this message translates to:
  /// **'Request Payment'**
  String get requestPayment;

  /// No description provided for @noChargesFound.
  ///
  /// In en_GB, this message translates to:
  /// **'No charges found for this tenant.'**
  String get noChargesFound;

  /// No description provided for @paid.
  ///
  /// In en_GB, this message translates to:
  /// **'Paid'**
  String get paid;

  /// No description provided for @unpaid.
  ///
  /// In en_GB, this message translates to:
  /// **'Unpaid'**
  String get unpaid;

  /// No description provided for @lateFee.
  ///
  /// In en_GB, this message translates to:
  /// **'Late Fee'**
  String get lateFee;

  /// No description provided for @totalAmount.
  ///
  /// In en_GB, this message translates to:
  /// **'Total Amount'**
  String get totalAmount;

  /// No description provided for @due.
  ///
  /// In en_GB, this message translates to:
  /// **'DUE'**
  String get due;

  /// No description provided for @days.
  ///
  /// In en_GB, this message translates to:
  /// **'DAYS'**
  String get days;

  /// No description provided for @more.
  ///
  /// In en_GB, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @from.
  ///
  /// In en_GB, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en_GB, this message translates to:
  /// **'To'**
  String get to;

  /// No description provided for @apply.
  ///
  /// In en_GB, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @startDateHint.
  ///
  /// In en_GB, this message translates to:
  /// **'Enter start date...'**
  String get startDateHint;

  /// No description provided for @endDateHint.
  ///
  /// In en_GB, this message translates to:
  /// **'Enter end date...'**
  String get endDateHint;

  /// No description provided for @showAllCharges.
  ///
  /// In en_GB, this message translates to:
  /// **'Show All Charges'**
  String get showAllCharges;

  /// No description provided for @showOnlyRentCharges.
  ///
  /// In en_GB, this message translates to:
  /// **'Show Only Rent Charges'**
  String get showOnlyRentCharges;

  /// No description provided for @paidAmount.
  ///
  /// In en_GB, this message translates to:
  /// **'Paid'**
  String get paidAmount;

  /// No description provided for @balance.
  ///
  /// In en_GB, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @overdue.
  ///
  /// In en_GB, this message translates to:
  /// **'Overdue'**
  String get overdue;

  /// No description provided for @allowPartialPayments.
  ///
  /// In en_GB, this message translates to:
  /// **'Allow Partial Payments'**
  String get allowPartialPayments;

  /// No description provided for @uploading.
  ///
  /// In en_GB, this message translates to:
  /// **'Uploading...'**
  String get uploading;

  /// No description provided for @communicationTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Communication'**
  String get communicationTitle;

  /// No description provided for @sendNotificationToTenants.
  ///
  /// In en_GB, this message translates to:
  /// **'Send notification to tenants'**
  String get sendNotificationToTenants;

  /// No description provided for @sendNotificationDescription.
  ///
  /// In en_GB, this message translates to:
  /// **'Send notification to tenant(s) via in-app push notification, email, or both.'**
  String get sendNotificationDescription;

  /// No description provided for @notifyViaApp.
  ///
  /// In en_GB, this message translates to:
  /// **'Notify Via App'**
  String get notifyViaApp;

  /// No description provided for @sendEmail.
  ///
  /// In en_GB, this message translates to:
  /// **'Send Email'**
  String get sendEmail;

  /// No description provided for @whoShouldReceiveNotification.
  ///
  /// In en_GB, this message translates to:
  /// **'Who should receive the notification?'**
  String get whoShouldReceiveNotification;

  /// No description provided for @allProperties.
  ///
  /// In en_GB, this message translates to:
  /// **'All Properties'**
  String get allProperties;

  /// No description provided for @properties.
  ///
  /// In en_GB, this message translates to:
  /// **'Properties'**
  String get properties;

  /// No description provided for @chooseProperty.
  ///
  /// In en_GB, this message translates to:
  /// **'Choose property'**
  String get chooseProperty;

  /// No description provided for @selectAddress.
  ///
  /// In en_GB, this message translates to:
  /// **'Select Address'**
  String get selectAddress;

  /// No description provided for @chooseAddress.
  ///
  /// In en_GB, this message translates to:
  /// **'Choose address'**
  String get chooseAddress;

  /// No description provided for @chooseUnit.
  ///
  /// In en_GB, this message translates to:
  /// **'Choose unit'**
  String get chooseUnit;

  /// No description provided for @notificationType.
  ///
  /// In en_GB, this message translates to:
  /// **'Notification type'**
  String get notificationType;

  /// No description provided for @pushNotificationTitle.
  ///
  /// In en_GB, this message translates to:
  /// **'Push Notification Title'**
  String get pushNotificationTitle;

  /// No description provided for @message.
  ///
  /// In en_GB, this message translates to:
  /// **'Message'**
  String get message;

  /// No description provided for @subject.
  ///
  /// In en_GB, this message translates to:
  /// **'Subject'**
  String get subject;

  /// No description provided for @addSubject.
  ///
  /// In en_GB, this message translates to:
  /// **'Add a subject'**
  String get addSubject;

  /// No description provided for @enterText.
  ///
  /// In en_GB, this message translates to:
  /// **'Enter your text...'**
  String get enterText;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'hi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'ar':
      {
        switch (locale.countryCode) {
          case 'AE':
            return AppLocalizationsArAe();
        }
        break;
      }
    case 'en':
      {
        switch (locale.countryCode) {
          case 'GB':
            return AppLocalizationsEnGb();
        }
        break;
      }
    case 'hi':
      {
        switch (locale.countryCode) {
          case 'IN':
            return AppLocalizationsHiIn();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'hi':
      return AppLocalizationsHi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
