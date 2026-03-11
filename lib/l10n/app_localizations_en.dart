// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get commonGetStarted => 'Get Started';

  @override
  String commonHello(Object name) {
    return 'Hello $name';
  }

  @override
  String get commonContinueButton => 'Continue';

  @override
  String get commonCancelButton => 'Cancel';

  @override
  String get commonOk => 'OK';

  @override
  String get commonAlertTitle => 'Alert!';

  @override
  String get commonSignOut => 'Sign Out';

  @override
  String get authLogin => 'Login';

  @override
  String get authRegister => 'Register';

  @override
  String get authOrContinueWith => 'Or continue with';

  @override
  String get authEnterMobileNumber => 'Enter Mobile Number';

  @override
  String get authForgotPassword => 'Forgot Password?';

  @override
  String get authDontHaveAnAccount => 'Don\'t have an account?';

  @override
  String get authTypeYourEmail => 'Type Your Email';

  @override
  String get authOrLoginWith => 'Or login with';

  @override
  String get authEmailAndPassword => 'Email & Password';

  @override
  String get authEmail => 'Email';

  @override
  String get authPassword => 'Password';

  @override
  String get authTypeYourPassword => 'Type Your Password';

  @override
  String get authHaveAnAccount => 'Have an account?';

  @override
  String get authFirstName => 'First Name';

  @override
  String get authLastName => 'Last Name';

  @override
  String get authPhoneNumber => 'Phone Number';

  @override
  String get authEmailVerificationTitle => 'Email Verification';

  @override
  String get authVerificationCodeSent => 'Verification code sent successfully';

  @override
  String get authOtpMessagePart1 => 'We have sent a verification code to your';

  @override
  String get authOtpMessagePart2 =>
      'email address. Type the code below to verify your email address.';

  @override
  String get authOtpMessagePart2Phone =>
      'phone number. Type the code below to verify your phone number.';

  @override
  String get authVerificationCodeTitle => 'Verification Code';

  @override
  String get authResendCodeButton => 'Re-send Code';

  @override
  String authSurveyWelcomeMessage(String firstName) {
    return 'Welcome to IjaraHub, $firstName 👋';
  }

  @override
  String get authSurveyIntro => 'Let\'s start by getting to know you.';

  @override
  String get authSurveyPropertyCountLabel => 'Your own properties';

  @override
  String get authSurveyPropertyCountQuestion =>
      'How many properties do you own?';

  @override
  String get authSurveyUnitCountLabel => 'Your own units';

  @override
  String get authSurveyUnitCountQuestion => 'How many units do you own?';

  @override
  String get authLanguageSelectionSelectLanguageTitle => 'Select Language';

  @override
  String get authLanguageSelectionLanguageEnglish => 'English';

  @override
  String get authForgotPasswordTitle => 'Forgot Password';

  @override
  String get authForgotPasswordMessage =>
      'Type your registered email address or phone number. We will send a verification code to your registered contact.';

  @override
  String get authSendButton => 'Send';

  @override
  String get authNewPasswordTitle => 'New Password';

  @override
  String get authNewPasswordEmailMessage =>
      'We have sent a reset code to your registered contact. Please check your email or phone for the code.';

  @override
  String get authChangePasswordButton => 'Change Password';

  @override
  String get authTypeNewPasswordLabel => 'Type your new password';

  @override
  String get authTypeResetCodeLabel => 'Type your reset code';

  @override
  String get authResetCodeTitle => 'Reset Code';

  @override
  String get errorsAlertDialogArgumentError =>
      'ARGUMENT FAIL: Alert Dialog Left Button Function Not Implement!';

  @override
  String get authAddYourPhoneNumber => 'Add Your Phone Number';

  @override
  String get authAddPhoneNumberMessage =>
      'Please Add your primary phone number';

  @override
  String get authTypeYourPhoneNumber => 'Type Your Phone Number';

  @override
  String get commonAdd => 'Add';

  @override
  String get propertyNoUnitsAddedYet => 'No units added yet.';

  @override
  String get propertyAddUnit => 'Add Unit';

  @override
  String get propertyEnterPropertiesAndUnits => 'Enter properties and units';

  @override
  String get propertyAddProperty => 'Add Property';

  @override
  String get commonAddress => 'Address';

  @override
  String get commonCity => 'City';

  @override
  String get commonState => 'State';

  @override
  String get commonZipCode => 'Zip Code';

  @override
  String get authStartScreenTitle => 'What would you like to do next?';

  @override
  String get authStartScreenFinishSetupUnit => 'Finish setup for Unit 1A';

  @override
  String get authStartScreenStartCollectingRent => 'Start collecting rent';

  @override
  String get authStartScreenAddTenants => 'Add tenants';

  @override
  String get authStartScreenShareSignLeases => 'Share & sign leases';

  @override
  String get authStartScreenSetupPaymentAccounts => 'Set up payment accounts';

  @override
  String get authStartScreenEasilyCollectRent => 'Easily collect rent';

  @override
  String get commonOr => 'OR';

  @override
  String get authStartScreenAddAnotherProperty => 'Add Another Property';

  @override
  String get authStartScreenYourProperties => 'Your Properties';

  @override
  String get unitNameNumber => 'Unit Name/Number';

  @override
  String get unitNumberOfBedrooms => '# of Bedrooms';

  @override
  String get unitNumberOfBathrooms => '# of Bathrooms';

  @override
  String get unitSquareFeet => 'Square Feet';

  @override
  String get commonNotes => 'Notes';

  @override
  String get authEmailOrPhoneNumber => 'Email Or Phone Number';

  @override
  String get authPhoneToggle => 'Phone';

  @override
  String get authEmailToggle => 'Email';

  @override
  String get propertiesTitle => 'Properties';

  @override
  String get commonLoading => 'Loading..';

  @override
  String get authGoogleSignInNotSupported =>
      'Google Sign-In on this Platform does not support authenticate method';

  @override
  String get authGoogleSignInCancelled =>
      'Sign-in was cancelled. Please try again if you want to continue.';

  @override
  String get authGoogleSignInInterrupted =>
      'Sign-in was interrupted. Please try again.';

  @override
  String get authGoogleSignInClientConfigError =>
      'There is a configuration issue with Google Sign-In. Please contact support.';

  @override
  String get authGoogleSignInProviderConfigError =>
      'Google Sign-In is currently unavailable. Please try again later.';

  @override
  String get authGoogleSignInUiUnavailable =>
      'Google Sign-In is currently unavailable. Please try again later.';

  @override
  String get authGoogleSignInUserMismatch =>
      'There was an issue with your account. Please sign out and try again.';

  @override
  String get authGoogleSignInNetworkError =>
      'A network error occurred during Google Sign-In. Please check your connection and try again.';

  @override
  String get authGoogleSignInInternalError =>
      'An internal error occurred during Google Sign-In. Please try again.';

  @override
  String get authGoogleSignInServiceError =>
      'A service error occurred during Google Sign-In. Please try again later.';

  @override
  String get authGoogleSignInUnexpectedError =>
      'An unexpected error occurred during Google Sign-In. Please try again.';

  @override
  String authGoogleSignInPlatformException(String message) {
    return 'PlatformException : $message';
  }

  @override
  String authGoogleSignInUnknownError(String error) {
    return 'Unknown error: $error';
  }

  @override
  String get authFacebookLoginCancelledOrFailed =>
      'Facebook login cancelled or failed';

  @override
  String get authFacebookLoginInvalidState =>
      'Invalid state parameter - possible CSRF attack';

  @override
  String authFacebookLoginAuthFailed(String error) {
    return 'Auth failed: $error';
  }

  @override
  String authFacebookLoginFailed(String error) {
    return 'Facebook Login failed: $error';
  }

  @override
  String get authSurveyPleaseSelectDate => 'Please select a date';

  @override
  String get authSurveyReadyToCollectRent => 'Ready to Collect Rent? ✨';

  @override
  String get authSurveyTeamReadyToAssist =>
      'We have a team ready to assist you and get you started collecting rent!';

  @override
  String get authSurveyStartingOn => 'Starting on';

  @override
  String get authSurveyNotInNearFuture => 'Not in the near future';

  @override
  String propertyUnitsCount(int count) {
    return '$count Units';
  }

  @override
  String propertyTotalRent(String amount) {
    return '\$$amount';
  }

  @override
  String propertyOccupiedUnitsCount(int count) {
    return '$count Occupied';
  }

  @override
  String propertyVacantUnitsCount(int count) {
    return '$count Vacant';
  }

  @override
  String homeGreeting(String firstName) {
    return 'Good Morning, $firstName 👋';
  }

  @override
  String get commonUnits => 'Units';

  @override
  String get authRoleSelectorTitle => 'Which best describes you?';

  @override
  String get commonSelectLanguage => 'Select Language';

  @override
  String get commonLanguageEnglish => 'English';

  @override
  String get commonLanguageHindi => 'हिंदी';

  @override
  String get commonLanguageArabic => 'العربية';

  @override
  String get roleLandlord => 'Landlord';

  @override
  String get roleTenant => 'Tenant';

  @override
  String get rolePropertyManager => 'Property Manager';

  @override
  String get roleMaintenancePerson => 'Maintenance Person';

  @override
  String get roleUser => 'User';

  @override
  String get roleUnknown => 'Unknown Role';

  @override
  String get maintenanceDemoMode => 'You are in Demo Mode';

  @override
  String get maintenanceExitDemo => 'Exit Demo';

  @override
  String get maintenancePendingRequests => 'Pending Maintenance Requests';

  @override
  String get maintenanceCompleted => 'Mark Complete';

  @override
  String get maintenanceAdd => 'Add';

  @override
  String get maintenanceSortFilter => 'Sort & Filter';

  @override
  String get maintenanceExportData => 'Export Data';

  @override
  String get maintenanceSave => 'Save Changes';

  @override
  String get maintenanceDetails => 'Details';

  @override
  String get maintenanceVideo => 'Video';

  @override
  String get maintenanceTenants => 'Tenants';

  @override
  String get maintenanceStatus => 'Status';

  @override
  String get maintenanceAssignTo => 'Assign to';

  @override
  String get maintenanceCategory => 'Category';

  @override
  String get maintenancePriority => 'Priority';

  @override
  String get maintenanceLaborCost => 'Labor Cost';

  @override
  String get maintenanceMaterialsCost => 'Materials Cost';

  @override
  String get maintenanceDelete => 'Delete';

  @override
  String get addMaintenanceTitle => 'Add new maintenance request';

  @override
  String get addMaintenanceSubTitle =>
      'Select the property and unit for which you would like to create new maintenance request.';

  @override
  String get addressLabel => 'Address';

  @override
  String get unitLabel => 'Unit';

  @override
  String get commonContinue => 'Continue';

  @override
  String get provideDetailsTitle => 'Provide request details';

  @override
  String get descriptionLabel => 'Description';

  @override
  String get descriptionHint => 'ex. Broken sidewalk';

  @override
  String get priorityLabel => 'Priority';

  @override
  String get categoryLabel => 'Category';

  @override
  String get accessInstructionsLabel => 'Latchel Vendor Access Instructions';

  @override
  String get notesLabel => 'Notes';

  @override
  String get commonBack => 'Back';

  @override
  String get commonSaveContinue => 'Save & Continue';

  @override
  String get current => 'Current';

  @override
  String get movingIn => 'Moving In';

  @override
  String get leaving => 'Leaving';

  @override
  String get accepted => 'Accepted';

  @override
  String get rejected => 'Rejected';

  @override
  String get prior => 'Prior';

  @override
  String get tenants => 'Tenants';

  @override
  String get leaseStarting => 'Lease Starting';

  @override
  String get leaseEnding => 'Lease Ending';

  @override
  String get previousTenants => 'Previous Tenants';

  @override
  String get renter => 'Renter';

  @override
  String get address => 'Address';

  @override
  String get unit => 'Unit';

  @override
  String get rent => 'Rent';

  @override
  String get add => 'Add';

  @override
  String get addTenantDescription =>
      'Connect tenant to your unit to let them start paying rent. Send an email invite and a text message now or later.';

  @override
  String get property => 'Property';

  @override
  String get selectProperty => 'Select Property';

  @override
  String get selectUnit => 'Select Unit';

  @override
  String get tenantFirstName => 'Tenant\'s First Name';

  @override
  String get enterFirstName => 'Enter first name';

  @override
  String get firstNameEmptyError => 'First name cannot be empty';

  @override
  String get tenantLastName => 'Tenant\'s Last Name';

  @override
  String get enterLastName => 'Enter last name';

  @override
  String get lastNameEmptyError => 'Last name cannot be empty';

  @override
  String get startAt => 'Start At';

  @override
  String get mmDdYyyy => 'MM/DD/YYYY';

  @override
  String get sendInvite => 'Send Invite';

  @override
  String get now => 'Now';

  @override
  String get inviteNowSubtitle =>
      'Connect and let tenant pay any charges you setup, sign leases, and receive messages';

  @override
  String get skipLater => 'Skip / Later';

  @override
  String get inviteLaterSubtitle =>
      'Not ready to invite yet? Create profile and set up charges now. Send invite when ready.';

  @override
  String get tenantEmail => 'Tenant\'s Email';

  @override
  String get enterEmail => 'Enter email address';

  @override
  String get emailEmptyError => 'Email cannot be empty';

  @override
  String get tenantPhoneNumber => 'Tenant\'s Phone Number';

  @override
  String get cancel => 'Cancel';

  @override
  String get addTenant => 'Add Tenant';

  @override
  String get success => 'Success';

  @override
  String get tenantAddedSuccess => 'Tenant added successfully';

  @override
  String get error => 'Error';

  @override
  String get tenantDetails => 'Tenant Details';

  @override
  String get details => 'Details';

  @override
  String get documents => 'Documents';

  @override
  String get charges => 'Charges';

  @override
  String get status => 'Status';

  @override
  String get currentTenant => 'Current Tenant';

  @override
  String get tenantAppInstalled => 'Tenant App Installed';

  @override
  String get connectedToUnit => 'Ed is connected to unit 🙌';

  @override
  String get autopayInactive => 'Autopay Inactive';

  @override
  String get autopaySubtitle => 'Ask Ed to turn on autopay';

  @override
  String get generalInfo => 'General Info';

  @override
  String get editDetails => 'Edit Details';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get email => 'Email';

  @override
  String get phone => 'Phone';

  @override
  String get payments => 'Payments';

  @override
  String get notes => 'Notes';

  @override
  String get leaseDetails => 'Lease Details';

  @override
  String get leaseStartDate => 'Lease Start Date';

  @override
  String get leaseEndDate => 'Lease End Date';

  @override
  String get monthlyRent => 'Monthly Lease Rent';

  @override
  String get viewUnit => 'View Unit';

  @override
  String get screenTenant => 'Screen Tenant';

  @override
  String get unlinkTenant => 'Unlink Tenant';

  @override
  String get unlinkDialogTitle => 'Unlink Tenant from Unit?';

  @override
  String get unlinkDialogContent =>
      'This will remove the tenant from the unit and mark the tenant as a Prior tenant.';

  @override
  String get unlink => 'Unlink';

  @override
  String get uploadFile => 'Upload File';

  @override
  String get signLeaseFeatureTitle =>
      'Tenants can now sign leases & other documents! ✨';

  @override
  String get uploadPdfDesc =>
      'Upload a PDF file of your lease to send a signature request.';

  @override
  String get addCharge => 'Add Charge';

  @override
  String get requestPayment => 'Request Payment';

  @override
  String get noChargesFound => 'No charges found for this tenant.';

  @override
  String get paid => 'Paid';

  @override
  String get unpaid => 'Unpaid';

  @override
  String get lateFee => 'Late Fee';

  @override
  String get totalAmount => 'Total Amount';

  @override
  String get due => 'DUE';

  @override
  String get days => 'DAYS';

  @override
  String get more => 'More';

  @override
  String get from => 'From';

  @override
  String get to => 'To';

  @override
  String get apply => 'Apply';

  @override
  String get startDateHint => 'Enter start date...';

  @override
  String get endDateHint => 'Enter end date...';

  @override
  String get showAllCharges => 'Show All Charges';

  @override
  String get showOnlyRentCharges => 'Show Only Rent Charges';

  @override
  String get paidAmount => 'Paid';

  @override
  String get balance => 'Balance';

  @override
  String get overdue => 'Overdue';

  @override
  String get allowPartialPayments => 'Allow Partial Payments';

  @override
  String get uploading => 'Uploading...';

  @override
  String get communicationTitle => 'Communication';

  @override
  String get sendNotificationToTenants => 'Send notification to tenants';

  @override
  String get sendNotificationDescription =>
      'Send notification to tenant(s) via in-app push notification, email, or both.';

  @override
  String get notifyViaApp => 'Notify Via App';

  @override
  String get sendEmail => 'Send Email';

  @override
  String get whoShouldReceiveNotification =>
      'Who should receive the notification?';

  @override
  String get allProperties => 'All Properties';

  @override
  String get properties => 'Properties';

  @override
  String get chooseProperty => 'Choose property';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get chooseAddress => 'Choose address';

  @override
  String get chooseUnit => 'Choose unit';

  @override
  String get notificationType => 'Notification type';

  @override
  String get pushNotificationTitle => 'Push Notification Title';

  @override
  String get message => 'Message';

  @override
  String get subject => 'Subject';

  @override
  String get addSubject => 'Add a subject';

  @override
  String get enterText => 'Enter your text...';
}

/// The translations for English, as used in the United Kingdom (`en_GB`).
class AppLocalizationsEnGb extends AppLocalizationsEn {
  AppLocalizationsEnGb() : super('en_GB');

  @override
  String get commonGetStarted => 'Get Started';

  @override
  String commonHello(Object name) {
    return 'Hello $name';
  }

  @override
  String get commonContinueButton => 'Continue';

  @override
  String get commonCancelButton => 'Cancel';

  @override
  String get commonOk => 'OK';

  @override
  String get commonAlertTitle => 'Alert!';

  @override
  String get commonSignOut => 'Sign Out';

  @override
  String get authLogin => 'Login';

  @override
  String get authRegister => 'Register';

  @override
  String get authOrContinueWith => 'Or continue with';

  @override
  String get authEnterMobileNumber => 'Enter Mobile Number';

  @override
  String get authForgotPassword => 'Forgot Password?';

  @override
  String get authDontHaveAnAccount => 'Don\'t have an account?';

  @override
  String get authTypeYourEmail => 'Type Your Email';

  @override
  String get authOrLoginWith => 'Or login with';

  @override
  String get authEmailAndPassword => 'Email & Password';

  @override
  String get authEmail => 'Email';

  @override
  String get authPassword => 'Password';

  @override
  String get authTypeYourPassword => 'Type Your Password';

  @override
  String get authHaveAnAccount => 'Have an account?';

  @override
  String get authFirstName => 'First Name';

  @override
  String get authLastName => 'Last Name';

  @override
  String get authPhoneNumber => 'Phone Number';

  @override
  String get authEmailVerificationTitle => 'Email Verification';

  @override
  String get authVerificationCodeSent => 'Verification code sent successfully';

  @override
  String get authOtpMessagePart1 => 'We have sent a verification code to your';

  @override
  String get authOtpMessagePart2 =>
      'email address. Type the code below to verify your email address.';

  @override
  String get authOtpMessagePart2Phone =>
      'phone number. Type the code below to verify your phone number.';

  @override
  String get authVerificationCodeTitle => 'Verification Code';

  @override
  String get authResendCodeButton => 'Re-send Code';

  @override
  String authSurveyWelcomeMessage(String firstName) {
    return 'Welcome to IjaraHub, $firstName 👋';
  }

  @override
  String get authSurveyIntro => 'Let\'s start by getting to know you.';

  @override
  String get authSurveyPropertyCountLabel => 'Your own properties';

  @override
  String get authSurveyPropertyCountQuestion =>
      'How many properties do you own?';

  @override
  String get authSurveyUnitCountLabel => 'Your own units';

  @override
  String get authSurveyUnitCountQuestion => 'How many units do you own?';

  @override
  String get authLanguageSelectionSelectLanguageTitle => 'Select Language';

  @override
  String get authLanguageSelectionLanguageEnglish => 'English';

  @override
  String get authForgotPasswordTitle => 'Forgot Password';

  @override
  String get authForgotPasswordMessage =>
      'Type your registered email address or phone number. We will send a verification code to your registered contact.';

  @override
  String get authSendButton => 'Send';

  @override
  String get authNewPasswordTitle => 'New Password';

  @override
  String get authNewPasswordEmailMessage =>
      'We have sent a reset code to your registered contact. Please check your email or phone for the code.';

  @override
  String get authChangePasswordButton => 'Change Password';

  @override
  String get authTypeNewPasswordLabel => 'Type your new password';

  @override
  String get authTypeResetCodeLabel => 'Type your reset code';

  @override
  String get authResetCodeTitle => 'Reset Code';

  @override
  String get errorsAlertDialogArgumentError =>
      'ARGUMENT FAIL: Alert Dialog Left Button Function Not Implement!';

  @override
  String get authAddYourPhoneNumber => 'Add Your Phone Number';

  @override
  String get authAddPhoneNumberMessage =>
      'Add your phone number to get started.';

  @override
  String get authTypeYourPhoneNumber => 'Type Your Phone Number';

  @override
  String get commonAdd => 'Add';

  @override
  String get propertyNoUnitsAddedYet => 'No units added yet';

  @override
  String get propertyAddUnit => 'Add Unit';

  @override
  String get propertyEnterPropertiesAndUnits => 'Enter properties and units';

  @override
  String get propertyAddProperty => 'Add Property';

  @override
  String get commonAddress => 'Address';

  @override
  String get commonCity => 'City';

  @override
  String get commonState => 'State';

  @override
  String get commonZipCode => 'Zip Code';

  @override
  String get authStartScreenTitle => 'Welcome to IjaraHub';

  @override
  String get authStartScreenFinishSetupUnit => 'Finish setting up your unit';

  @override
  String get authStartScreenStartCollectingRent => 'Start collecting rent';

  @override
  String get authStartScreenAddTenants => 'Add tenants';

  @override
  String get authStartScreenShareSignLeases => 'Share & sign leases';

  @override
  String get authStartScreenSetupPaymentAccounts => 'Setup payment accounts';

  @override
  String get authStartScreenEasilyCollectRent => 'Easily collect rent';

  @override
  String get commonOr => 'Or';

  @override
  String get authStartScreenAddAnotherProperty => 'Add another property';

  @override
  String get authStartScreenYourProperties => 'Your Properties';

  @override
  String get unitNameNumber => 'Unit Name/Number';

  @override
  String get unitNumberOfBedrooms => 'Number of Bedrooms';

  @override
  String get unitNumberOfBathrooms => 'Number of Bathrooms';

  @override
  String get unitSquareFeet => 'Square Feet';

  @override
  String get commonNotes => 'Notes';

  @override
  String get authEmailOrPhoneNumber => 'Email or Phone Number';

  @override
  String get authPhoneToggle => 'Phone';

  @override
  String get authEmailToggle => 'Email';

  @override
  String get propertiesTitle => 'Properties';

  @override
  String get commonLoading => 'Loading..';

  @override
  String get authGoogleSignInNotSupported =>
      'Google Sign-In on this Platform does not support authenticate method';

  @override
  String get authGoogleSignInCancelled =>
      'Sign-in was cancelled. Please try again if you want to continue.';

  @override
  String get authGoogleSignInInterrupted =>
      'Sign-in was interrupted. Please try again.';

  @override
  String get authGoogleSignInClientConfigError =>
      'There is a configuration issue with Google Sign-In. Please contact support.';

  @override
  String get authGoogleSignInProviderConfigError =>
      'Google Sign-In is currently unavailable. Please try again later.';

  @override
  String get authGoogleSignInUiUnavailable =>
      'Google Sign-In is currently unavailable. Please try again later.';

  @override
  String get authGoogleSignInUserMismatch =>
      'There was an issue with your account. Please sign out and try again.';

  @override
  String get authGoogleSignInNetworkError =>
      'A network error occurred during Google Sign-In. Please check your connection and try again.';

  @override
  String get authGoogleSignInInternalError =>
      'An internal error occurred during Google Sign-In. Please try again.';

  @override
  String get authGoogleSignInServiceError =>
      'A service error occurred during Google Sign-In. Please try again later.';

  @override
  String get authGoogleSignInUnexpectedError =>
      'An unexpected error occurred during Google Sign-In. Please try again.';

  @override
  String authGoogleSignInPlatformException(String message) {
    return 'PlatformException : $message';
  }

  @override
  String authGoogleSignInUnknownError(String error) {
    return 'Unknown error: $error';
  }

  @override
  String get authFacebookLoginCancelledOrFailed =>
      'Facebook login cancelled or failed';

  @override
  String get authFacebookLoginInvalidState =>
      'Invalid state parameter - possible CSRF attack';

  @override
  String authFacebookLoginAuthFailed(String error) {
    return 'Auth failed: $error';
  }

  @override
  String authFacebookLoginFailed(String error) {
    return 'Facebook Login failed: $error';
  }

  @override
  String get authSurveyPleaseSelectDate => 'Please select a date';

  @override
  String get authSurveyReadyToCollectRent => 'Ready to Collect Rent? ✨';

  @override
  String get authSurveyTeamReadyToAssist =>
      'We have a team ready to assist you and get you started collecting rent!';

  @override
  String get authSurveyStartingOn => 'Starting on';

  @override
  String get authSurveyNotInNearFuture => 'Not in the near future';

  @override
  String propertyUnitsCount(int count) {
    return '$count Units';
  }

  @override
  String propertyTotalRent(String amount) {
    return '\$$amount';
  }

  @override
  String propertyOccupiedUnitsCount(int count) {
    return '$count Occupied';
  }

  @override
  String propertyVacantUnitsCount(int count) {
    return '$count Vacant';
  }

  @override
  String homeGreeting(String firstName) {
    return 'Good Morning, $firstName 👋';
  }

  @override
  String get commonUnits => 'Units';

  @override
  String get authRoleSelectorTitle => 'Which best describes you?';

  @override
  String get commonSelectLanguage => 'Select Language';

  @override
  String get commonLanguageEnglish => 'English';

  @override
  String get commonLanguageHindi => 'हिंदी';

  @override
  String get commonLanguageArabic => 'العربية';

  @override
  String get roleLandlord => 'Landlord';

  @override
  String get roleTenant => 'Tenant';

  @override
  String get rolePropertyManager => 'Property Manager';

  @override
  String get roleMaintenancePerson => 'Maintenance Person';

  @override
  String get roleUser => 'User';

  @override
  String get roleUnknown => 'Unknown Role';

  @override
  String get maintenanceDemoMode => 'You are in Demo Mode';

  @override
  String get maintenanceExitDemo => 'Exit Demo';

  @override
  String get maintenancePendingRequests => 'Pending Maintenance Requests';

  @override
  String get maintenanceCompleted => 'Mark Complete';

  @override
  String get maintenanceAdd => 'Add';

  @override
  String get maintenanceSortFilter => 'Sort & Filter';

  @override
  String get maintenanceExportData => 'Export Data';

  @override
  String get maintenanceSave => 'Save Changes';

  @override
  String get maintenanceDetails => 'Details';

  @override
  String get maintenanceVideo => 'Video';

  @override
  String get maintenanceTenants => 'Tenants';

  @override
  String get maintenanceStatus => 'Status';

  @override
  String get maintenanceAssignTo => 'Assign to';

  @override
  String get maintenanceCategory => 'Category';

  @override
  String get maintenancePriority => 'Priority';

  @override
  String get maintenanceLaborCost => 'Labor Cost';

  @override
  String get maintenanceMaterialsCost => 'Materials Cost';

  @override
  String get maintenanceDelete => 'Delete';

  @override
  String get addMaintenanceTitle => 'Add new maintenance request';

  @override
  String get addMaintenanceSubTitle =>
      'Select the property and unit for which you would like to create new maintenance request.';

  @override
  String get addressLabel => 'Address';

  @override
  String get unitLabel => 'Unit';

  @override
  String get commonContinue => 'Continue';

  @override
  String get provideDetailsTitle => 'Provide request details';

  @override
  String get descriptionLabel => 'Description';

  @override
  String get descriptionHint => 'ex. Broken sidewalk';

  @override
  String get priorityLabel => 'Priority';

  @override
  String get categoryLabel => 'Category';

  @override
  String get accessInstructionsLabel => 'Latchel Vendor Access Instructions';

  @override
  String get notesLabel => 'Notes';

  @override
  String get commonBack => 'Back';

  @override
  String get commonSaveContinue => 'Save & Continue';

  @override
  String get current => 'Current';

  @override
  String get movingIn => 'Moving In';

  @override
  String get leaving => 'Leaving';

  @override
  String get accepted => 'Accepted';

  @override
  String get rejected => 'Rejected';

  @override
  String get prior => 'Prior';

  @override
  String get tenants => 'Tenants';

  @override
  String get leaseStarting => 'Lease Starting';

  @override
  String get leaseEnding => 'Lease Ending';

  @override
  String get previousTenants => 'Previous Tenants';

  @override
  String get renter => 'Renter';

  @override
  String get address => 'Address';

  @override
  String get unit => 'Unit';

  @override
  String get rent => 'Rent';

  @override
  String get add => 'Add';

  @override
  String get addTenantDescription =>
      'Connect tenant to your unit to let them start paying rent. Send an email invite and a text message now or later.';

  @override
  String get property => 'Property';

  @override
  String get selectProperty => 'Select Property';

  @override
  String get selectUnit => 'Select Unit';

  @override
  String get tenantFirstName => 'Tenant\'s First Name';

  @override
  String get enterFirstName => 'Enter first name';

  @override
  String get firstNameEmptyError => 'First name cannot be empty';

  @override
  String get tenantLastName => 'Tenant\'s Last Name';

  @override
  String get enterLastName => 'Enter last name';

  @override
  String get lastNameEmptyError => 'Last name cannot be empty';

  @override
  String get startAt => 'Start At';

  @override
  String get mmDdYyyy => 'MM/DD/YYYY';

  @override
  String get sendInvite => 'Send Invite';

  @override
  String get now => 'Now';

  @override
  String get inviteNowSubtitle =>
      'Connect and let tenant pay any charges you setup, sign leases, and receive messages';

  @override
  String get skipLater => 'Skip / Later';

  @override
  String get inviteLaterSubtitle =>
      'Not ready to invite yet? Create profile and set up charges now. Send invite when ready.';

  @override
  String get tenantEmail => 'Tenant\'s Email';

  @override
  String get enterEmail => 'Enter email address';

  @override
  String get emailEmptyError => 'Email cannot be empty';

  @override
  String get tenantPhoneNumber => 'Tenant\'s Phone Number';

  @override
  String get cancel => 'Cancel';

  @override
  String get addTenant => 'Add Tenant';

  @override
  String get success => 'Success';

  @override
  String get tenantAddedSuccess => 'Tenant added successfully';

  @override
  String get error => 'Error';

  @override
  String get tenantDetails => 'Tenant Details';

  @override
  String get details => 'Details';

  @override
  String get documents => 'Documents';

  @override
  String get charges => 'Charges';

  @override
  String get status => 'Status';

  @override
  String get currentTenant => 'Current Tenant';

  @override
  String get tenantAppInstalled => 'Tenant App Installed';

  @override
  String get connectedToUnit => 'Ed is connected to unit 🙌';

  @override
  String get autopayInactive => 'Autopay Inactive';

  @override
  String get autopaySubtitle => 'Ask Ed to turn on autopay';

  @override
  String get generalInfo => 'General Info';

  @override
  String get editDetails => 'Edit Details';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get email => 'Email';

  @override
  String get phone => 'Phone';

  @override
  String get payments => 'Payments';

  @override
  String get notes => 'Notes';

  @override
  String get leaseDetails => 'Lease Details';

  @override
  String get leaseStartDate => 'Lease Start Date';

  @override
  String get leaseEndDate => 'Lease End Date';

  @override
  String get monthlyRent => 'Monthly Lease Rent';

  @override
  String get viewUnit => 'View Unit';

  @override
  String get screenTenant => 'Screen Tenant';

  @override
  String get unlinkTenant => 'Unlink Tenant';

  @override
  String get unlinkDialogTitle => 'Unlink Tenant from Unit?';

  @override
  String get unlinkDialogContent =>
      'This will remove the tenant from the unit and mark the tenant as a Prior tenant.';

  @override
  String get unlink => 'Unlink';

  @override
  String get uploadFile => 'Upload File';

  @override
  String get signLeaseFeatureTitle =>
      'Tenants can now sign leases & other documents! ✨';

  @override
  String get uploadPdfDesc =>
      'Upload a PDF file of your lease to send a signature request.';

  @override
  String get addCharge => 'Add Charge';

  @override
  String get requestPayment => 'Request Payment';

  @override
  String get noChargesFound => 'No charges found for this tenant.';

  @override
  String get paid => 'Paid';

  @override
  String get unpaid => 'Unpaid';

  @override
  String get lateFee => 'Late Fee';

  @override
  String get totalAmount => 'Total Amount';

  @override
  String get due => 'DUE';

  @override
  String get days => 'DAYS';

  @override
  String get more => 'More';

  @override
  String get from => 'From';

  @override
  String get to => 'To';

  @override
  String get apply => 'Apply';

  @override
  String get startDateHint => 'Enter start date...';

  @override
  String get endDateHint => 'Enter end date...';

  @override
  String get showAllCharges => 'Show All Charges';

  @override
  String get showOnlyRentCharges => 'Show Only Rent Charges';

  @override
  String get paidAmount => 'Paid';

  @override
  String get balance => 'Balance';

  @override
  String get overdue => 'Overdue';

  @override
  String get allowPartialPayments => 'Allow Partial Payments';

  @override
  String get uploading => 'Uploading...';

  @override
  String get communicationTitle => 'Communication';

  @override
  String get sendNotificationToTenants => 'Send notification to tenants';

  @override
  String get sendNotificationDescription =>
      'Send notification to tenant(s) via in-app push notification, email, or both.';

  @override
  String get notifyViaApp => 'Notify Via App';

  @override
  String get sendEmail => 'Send Email';

  @override
  String get whoShouldReceiveNotification =>
      'Who should receive the notification?';

  @override
  String get allProperties => 'All Properties';

  @override
  String get properties => 'Properties';

  @override
  String get chooseProperty => 'Choose property';

  @override
  String get selectAddress => 'Select Address';

  @override
  String get chooseAddress => 'Choose address';

  @override
  String get chooseUnit => 'Choose unit';

  @override
  String get notificationType => 'Notification type';

  @override
  String get pushNotificationTitle => 'Push Notification Title';

  @override
  String get message => 'Message';

  @override
  String get subject => 'Subject';

  @override
  String get addSubject => 'Add a subject';

  @override
  String get enterText => 'Enter your text...';
}
