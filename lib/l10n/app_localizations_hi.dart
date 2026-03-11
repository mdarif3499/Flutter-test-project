// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get commonGetStarted => 'शुरू हो जाओ';

  @override
  String commonHello(Object name) {
    return 'नमस्ते $name';
  }

  @override
  String get commonContinueButton => 'जारी रखें';

  @override
  String get commonCancelButton => 'रद्द करें';

  @override
  String get commonOk => 'ठीक है';

  @override
  String get commonAlertTitle => 'चेतावनी!';

  @override
  String get commonSignOut => 'साइन आउट';

  @override
  String get authLogin => 'लॉग इन करें';

  @override
  String get authRegister => 'रजिस्टर करें';

  @override
  String get authOrContinueWith => 'या इसके साथ जारी रखें';

  @override
  String get authEnterMobileNumber => 'मोबाइल नंबर दर्ज करें';

  @override
  String get authForgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get authDontHaveAnAccount => 'खाता नहीं है?';

  @override
  String get authTypeYourEmail => 'अपना ईमेल टाइप करें';

  @override
  String get authOrLoginWith => 'या इसके साथ लॉगिन करें';

  @override
  String get authEmailAndPassword => 'ईमेल और पासवर्ड';

  @override
  String get authEmail => 'ईमेल';

  @override
  String get authPassword => 'पासवर्ड';

  @override
  String get authTypeYourPassword => 'अपना पासवर्ड टाइप करें';

  @override
  String get authHaveAnAccount => 'खाता है?';

  @override
  String get authFirstName => 'पहला नाम';

  @override
  String get authLastName => 'अंतिम नाम';

  @override
  String get authPhoneNumber => 'फोन नंबर';

  @override
  String get authEmailVerificationTitle => 'ईमेल सत्यापन';

  @override
  String get authVerificationCodeSent => 'सत्यापन कोड सफलतापूर्वक भेजा गया';

  @override
  String get authOtpMessagePart1 => 'हमने आपके';

  @override
  String get authOtpMessagePart2 =>
      'ईमेल पते पर एक सत्यापन कोड भेजा है। अपना ईमेल पता सत्यापित करने के लिए नीचे कोड टाइप करें।';

  @override
  String get authOtpMessagePart2Phone =>
      'फ़ोन नंबर पर एक सत्यापन कोड भेजा है। अपना फ़ोन नंबर सत्यापित करने के लिए नीचे कोड टाइप करें।';

  @override
  String get authVerificationCodeTitle => 'सत्यापन कोड';

  @override
  String get authResendCodeButton => 'कोड फिर से भेजें';

  @override
  String authSurveyWelcomeMessage(String firstName) {
    return 'इजाराहब में आपका स्वागत है, $firstName 👋';
  }

  @override
  String get authSurveyIntro => 'आइए आपको जानकर शुरू करें।';

  @override
  String get authSurveyPropertyCountLabel => 'आपकी अपनी संपत्तियां';

  @override
  String get authSurveyPropertyCountQuestion =>
      'आपके पास कितनी संपत्तियां हैं?';

  @override
  String get authSurveyUnitCountLabel => 'आपकी अपनी इकाइयां';

  @override
  String get authSurveyUnitCountQuestion => 'आपके पास कितनी इकाइयां हैं?';

  @override
  String get authLanguageSelectionSelectLanguageTitle => 'भाषा चुनें';

  @override
  String get authLanguageSelectionLanguageEnglish => 'अंग्रेजी';

  @override
  String get authForgotPasswordTitle => 'पासवर्ड भूल गए';

  @override
  String get authForgotPasswordMessage =>
      'अपना पंजीकृत ईमेल पता या फोन नंबर टाइप करें। हम आपके पंजीकृत संपर्क पर एक सत्यापन कोड भेजेंगे।';

  @override
  String get authSendButton => 'भेजें';

  @override
  String get authNewPasswordTitle => 'नया पासवर्ड';

  @override
  String get authNewPasswordEmailMessage =>
      'हमने आपके पंजीकृत संपर्क पर एक रीसेट कोड भेजा है। कृपया कोड के लिए अपना ईमेल या फोन जांचें।';

  @override
  String get authChangePasswordButton => 'पासवर्ड बदलें';

  @override
  String get authTypeNewPasswordLabel => 'अपना नया पासवर्ड टाइप करें';

  @override
  String get authTypeResetCodeLabel => 'अपना रीसेट कोड टाइप करें';

  @override
  String get authResetCodeTitle => 'रीसेट कोड';

  @override
  String get errorsAlertDialogArgumentError =>
      'तर्क विफल: चेतावनी संवाद बायां बटन फ़ंक्शन लागू नहीं है!';

  @override
  String get authAddYourPhoneNumber => 'अपना फ़ोन नंबर जोड़ें';

  @override
  String get authAddPhoneNumberMessage =>
      'कृपया अपना प्राथमिक फ़ोन नंबर जोड़ें';

  @override
  String get authTypeYourPhoneNumber => 'अपना फोन नंबर टाइप करें';

  @override
  String get commonAdd => 'जोड़ें';

  @override
  String get propertyNoUnitsAddedYet => 'अभी तक कोई इकाई नहीं जोड़ी गई है।';

  @override
  String get propertyAddUnit => 'इकाई जोड़ें';

  @override
  String get propertyEnterPropertiesAndUnits =>
      'संपत्तियां और इकाइयां दर्ज करें';

  @override
  String get propertyAddProperty => 'संपत्ति जोड़ें';

  @override
  String get commonAddress => 'पता';

  @override
  String get commonCity => 'शहर';

  @override
  String get commonState => 'राज्य';

  @override
  String get commonZipCode => 'ज़िप कोड';

  @override
  String get authStartScreenTitle => 'आप आगे क्या करना चाहेंगे?';

  @override
  String get authStartScreenFinishSetupUnit =>
      'यूनिट 1A के लिए सेटअप पूरा करें';

  @override
  String get authStartScreenStartCollectingRent => 'किराया वसूलना शुरू करें';

  @override
  String get authStartScreenAddTenants => 'किरायेदार जोड़ें';

  @override
  String get authStartScreenShareSignLeases =>
      'पट्टे साझा करें और हस्ताक्षर करें';

  @override
  String get authStartScreenSetupPaymentAccounts => 'भुगतान खाते सेट करें';

  @override
  String get authStartScreenEasilyCollectRent => 'आसानी से किराया वसूलें';

  @override
  String get commonOr => 'Or';

  @override
  String get authStartScreenAddAnotherProperty => 'एक और संपत्ति जोड़ें';

  @override
  String get authStartScreenYourProperties => 'आपकी संपत्तियां';

  @override
  String get unitNameNumber => 'इकाई का नाम/नंबर';

  @override
  String get unitNumberOfBedrooms => 'बेडरूम की संख्या';

  @override
  String get unitNumberOfBathrooms => 'बाथरूम की संख्या';

  @override
  String get unitSquareFeet => 'वर्ग फुट';

  @override
  String get commonNotes => 'टिप्पणियाँ';

  @override
  String get authEmailOrPhoneNumber => 'ईमेल या फोन नंबर';

  @override
  String get authPhoneToggle => 'फोन';

  @override
  String get authEmailToggle => 'ईमेल';

  @override
  String get propertiesTitle => 'Properties';

  @override
  String get commonLoading => 'लोड हो रहा है..';

  @override
  String get authGoogleSignInNotSupported =>
      'इस प्लेटफ़ॉर्म पर Google साइन-इन प्रमाणीकरण विधि का समर्थन नहीं करता है';

  @override
  String get authGoogleSignInCancelled =>
      'साइन-इन रद्द कर दिया गया था। यदि आप जारी रखना चाहते हैं तो कृपया पुनः प्रयास करें।';

  @override
  String get authGoogleSignInInterrupted =>
      'साइन-इन बाधित हो गया था। कृपया पुनः प्रयास करें।';

  @override
  String get authGoogleSignInClientConfigError =>
      'Google साइन-इन के साथ एक कॉन्फ़िगरेशन समस्या है। कृपया सहायता से संपर्क करें।';

  @override
  String get authGoogleSignInProviderConfigError =>
      'Google साइन-इन वर्तमान में अनुपलब्ध है। कृपया बाद में पुनः प्रयास करें।';

  @override
  String get authGoogleSignInUiUnavailable =>
      'Google साइन-इन वर्तमान में अनुपलब्ध है। कृपया बाद में पुनः प्रयास करें।';

  @override
  String get authGoogleSignInUserMismatch =>
      'आपके खाते में कोई समस्या थी। कृपया साइन आउट करें और पुनः प्रयास करें।';

  @override
  String get authGoogleSignInNetworkError =>
      'Google साइन-इन के दौरान एक नेटवर्क त्रुटि हुई। कृपया अपना कनेक्शन जांचें और पुनः प्रयास करें।';

  @override
  String get authGoogleSignInInternalError =>
      'Google साइन-इन के दौरान एक आंतरिक त्रुटि हुई। कृपया पुनः प्रयास करें।';

  @override
  String get authGoogleSignInServiceError =>
      'Google साइन-इन के दौरान एक सेवा त्रुटि हुई। कृपया बाद में पुनः प्रयास करें।';

  @override
  String get authGoogleSignInUnexpectedError =>
      'Google साइन-इन के दौरान एक अप्रत्याशित त्रुटि हुई। कृपया पुनः प्रयास करें।';

  @override
  String authGoogleSignInPlatformException(String message) {
    return 'प्लेटफ़ॉर्म अपवाद: $message';
  }

  @override
  String authGoogleSignInUnknownError(String error) {
    return 'अज्ञात त्रुटि: $error';
  }

  @override
  String get authFacebookLoginCancelledOrFailed => 'फेसबुक लॉगिन रद्द या विफल';

  @override
  String get authFacebookLoginInvalidState =>
      'अमान्य स्थिति पैरामीटर - संभावित CSRF हमला';

  @override
  String authFacebookLoginAuthFailed(String error) {
    return 'प्रमाणीकरण विफल: $error';
  }

  @override
  String authFacebookLoginFailed(String error) {
    return 'फेसबुक लॉगिन विफल: $error';
  }

  @override
  String get authSurveyPleaseSelectDate => 'कृपया एक तिथि चुनें';

  @override
  String get authSurveyReadyToCollectRent =>
      'किराया वसूलने के लिए तैयार हैं? ✨';

  @override
  String get authSurveyTeamReadyToAssist =>
      'हमारे पास एक टीम है जो आपकी सहायता करने और आपको किराया वसूलना शुरू करने के लिए तैयार है!';

  @override
  String get authSurveyStartingOn => 'से शुरू हो रहा है';

  @override
  String get authSurveyNotInNearFuture => 'निकट भविष्य में नहीं';

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
  String get authRoleSelectorTitle => 'आपको सबसे अच्छा क्या बताता है?';

  @override
  String get commonSelectLanguage => 'Select Language';

  @override
  String get commonLanguageEnglish => 'English';

  @override
  String get commonLanguageHindi => 'हिंदी';

  @override
  String get commonLanguageArabic => 'العربية';

  @override
  String get roleLandlord => 'मकान मालिक';

  @override
  String get roleTenant => 'किरायेदार';

  @override
  String get rolePropertyManager => 'संपत्ति प्रबंधक';

  @override
  String get roleMaintenancePerson => 'रखरखाव व्यक्ति';

  @override
  String get roleUser => 'उपयोगकर्ता';

  @override
  String get roleUnknown => 'अज्ञात भूमिका';

  @override
  String get maintenanceDemoMode => 'आप डेमो मोड में हैं';

  @override
  String get maintenanceExitDemo => 'डेमो से बाहर निकलें';

  @override
  String get maintenancePendingRequests => 'लंबित रखरखाव अनुरोध';

  @override
  String get maintenanceCompleted => 'पूरा हुआ';

  @override
  String get maintenanceAdd => 'जोड़ें';

  @override
  String get maintenanceSortFilter => 'सॉर्ट और फ़िल्टर';

  @override
  String get maintenanceExportData => 'डेटा एक्सपोर्ट';

  @override
  String get maintenanceSave => 'बदलाव सहेजें';

  @override
  String get maintenanceDetails => 'विवरण';

  @override
  String get maintenanceVideo => 'वीडियो';

  @override
  String get maintenanceTenants => 'किरायेदार';

  @override
  String get maintenanceStatus => 'स्थिति';

  @override
  String get maintenanceAssignTo => 'किसे सौंपा गया';

  @override
  String get maintenanceCategory => 'श्रेणी';

  @override
  String get maintenancePriority => 'प्राथमिकता';

  @override
  String get maintenanceLaborCost => 'श्रम लागत';

  @override
  String get maintenanceMaterialsCost => 'सामग्री लागत';

  @override
  String get maintenanceDelete => 'हटाएं';

  @override
  String get addMaintenanceTitle => 'नया रखरखाव अनुरोध जोड़ें';

  @override
  String get addMaintenanceSubTitle =>
      'उस संपत्ति और इकाई का चयन करें जिसके लिए আপনি नया रखरखाव अनुरोध बनाना चाहते हैं।';

  @override
  String get addressLabel => 'पता';

  @override
  String get unitLabel => 'यूनिट';

  @override
  String get commonContinue => 'जारी रखें';

  @override
  String get provideDetailsTitle => 'अनुरोध विवरण प्रदान करें';

  @override
  String get descriptionLabel => 'विवरण';

  @override
  String get descriptionHint => 'जैसे: टूटा हुआ फुटपाथ';

  @override
  String get priorityLabel => 'प्राथमिकता';

  @override
  String get categoryLabel => 'श्रेणी';

  @override
  String get accessInstructionsLabel => 'लैटचेल विक्रेता पहुंच निर्देश';

  @override
  String get notesLabel => 'नोट्स';

  @override
  String get commonBack => 'पीछे';

  @override
  String get commonSaveContinue => 'सहेजें और जारी रखें';

  @override
  String get current => 'वर्तमान';

  @override
  String get movingIn => 'अंदर आ रहे हैं';

  @override
  String get leaving => 'छोड़ रहे हैं';

  @override
  String get accepted => 'स्वीकृत';

  @override
  String get rejected => 'अस्वीकृत';

  @override
  String get prior => 'पूर्व';

  @override
  String get tenants => 'किरायेदार';

  @override
  String get leaseStarting => 'पट्टा शुरू';

  @override
  String get leaseEnding => 'पट्टा समाप्त';

  @override
  String get previousTenants => 'पिछले किरायेदार';

  @override
  String get renter => 'किरायेदार';

  @override
  String get address => 'पता';

  @override
  String get unit => 'यूनिट';

  @override
  String get rent => 'किराया';

  @override
  String get add => 'जोड़ें';

  @override
  String get addTenantDescription =>
      'किरायेदार को अपनी यूनिट से जोड़ें ताकि वे किराया देना शुरू कर सकें। अभी या बाद में ईमेल आमंत्रण और टेक्स्ट संदेश भेजें।';

  @override
  String get property => 'संपत्ति';

  @override
  String get selectProperty => 'संपत्ति चुनें';

  @override
  String get selectUnit => 'यूनिट चुनें';

  @override
  String get tenantFirstName => 'किरायेदार का पहला नाम';

  @override
  String get enterFirstName => 'पहला नाम दर्ज करें';

  @override
  String get firstNameEmptyError => 'पहला नाम खाली नहीं हो सकता';

  @override
  String get tenantLastName => 'किरायेदार का अंतिम नाम';

  @override
  String get enterLastName => 'अंतिम नाम दर्ज करें';

  @override
  String get lastNameEmptyError => 'अंतिम नाम खाली नहीं हो सकता';

  @override
  String get startAt => 'शुरू होने की तिथि';

  @override
  String get mmDdYyyy => 'माह/दिन/वर्ष';

  @override
  String get sendInvite => 'आमंत्रण भेजें';

  @override
  String get now => 'अभी';

  @override
  String get inviteNowSubtitle =>
      'जुड़ें और किरायेदार को आपके द्वारा सेटअप किए गए किसी भी शुल्क का भुगतान करने, लीज पर हस्ताक्षर करने और संदेश प्राप्त करने दें';

  @override
  String get skipLater => 'छोड़ें / बाद में';

  @override
  String get inviteLaterSubtitle =>
      'अभी आमंत्रित करने के लिए तैयार नहीं हैं? प्रोफ़ाइल बनाएं और अभी शुल्क सेट करें। तैयार होने पर आमंत्रण भेजें।';

  @override
  String get tenantEmail => 'किरायेदार का ईमेल';

  @override
  String get enterEmail => 'ईमेल पता दर्ज करें';

  @override
  String get emailEmptyError => 'ईमेल खाली नहीं हो सकता';

  @override
  String get tenantPhoneNumber => 'किरायेदार का फ़ोन नंबर';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get addTenant => 'किरायेदार जोड़ें';

  @override
  String get success => 'सफलता';

  @override
  String get tenantAddedSuccess => 'किरायेदार सफलतापूर्वक जोड़ा गया';

  @override
  String get error => 'त्रुटि';

  @override
  String get tenantDetails => 'किराएदार का विवरण';

  @override
  String get details => 'विवরণ';

  @override
  String get documents => 'दस्तावेज़';

  @override
  String get charges => 'शुल्क';

  @override
  String get status => 'स्थिति';

  @override
  String get currentTenant => 'वर्तमान किराएदार';

  @override
  String get tenantAppInstalled => 'किराएदार ऐप इंस्टॉल किया गया';

  @override
  String get connectedToUnit => 'किराएदार यूनिट से जुड़ा हुआ है 🙌';

  @override
  String get autopayInactive => 'ऑटोपे निष्क्रिय है';

  @override
  String get autopaySubtitle => 'किराएदार से ऑटोपे चालू करने के लिए कहें';

  @override
  String get generalInfo => 'सामान्य जानकारी';

  @override
  String get editDetails => 'विवरण संपादित करें';

  @override
  String get firstName => 'पहला नाम';

  @override
  String get lastName => 'अंतिम नाम';

  @override
  String get email => 'ईमेल';

  @override
  String get phone => 'फ़ोन';

  @override
  String get payments => 'भुगतान';

  @override
  String get notes => 'टिप्पणियाँ';

  @override
  String get leaseDetails => 'पट्टे का विवरण';

  @override
  String get leaseStartDate => 'पट्टा शुरू होने की तारीख';

  @override
  String get leaseEndDate => 'पट्टा समाप्त होने की तारीख';

  @override
  String get monthlyRent => 'मासिक पट्टा किराया';

  @override
  String get viewUnit => 'यूनिट देखें';

  @override
  String get screenTenant => 'किরাएदार की जांच करें';

  @override
  String get unlinkTenant => 'किराएदार को अलग करें';

  @override
  String get unlinkDialogTitle => 'किराएदार को यूनिट से अलग करें?';

  @override
  String get unlinkDialogContent =>
      'यह किराएदार को यूनिट से हटा देगा और उसे पूर्व किराएदार के रूप में चिह्नित करेगा।';

  @override
  String get unlink => 'अलग करें';

  @override
  String get uploadFile => 'फ़ाइल अपलोड करें';

  @override
  String get signLeaseFeatureTitle =>
      'किराएदार अब पट्टों पर हस्ताक्षर कर सकते हैं! ✨';

  @override
  String get uploadPdfDesc =>
      'हस्ताक्षर अनुरोध भेजने के लिए अपने पट्टे की एक पीडीएफ फाइल अपलोड करें।';

  @override
  String get addCharge => 'शुल्क जोड़ें';

  @override
  String get requestPayment => 'भुगतान का अनुरोध करें';

  @override
  String get noChargesFound => 'इस किरायेदार के लिए कोई शुल्क नहीं मिला।';

  @override
  String get paid => 'भुगतान किया';

  @override
  String get unpaid => 'अवैतनिक';

  @override
  String get lateFee => 'विलंब शुल्क';

  @override
  String get totalAmount => 'कुल राशि';

  @override
  String get due => 'देय';

  @override
  String get days => 'दिन';

  @override
  String get more => 'अधिक';

  @override
  String get from => 'से';

  @override
  String get to => 'तक';

  @override
  String get apply => 'लागू करें';

  @override
  String get startDateHint => 'आरंभ तिथि दर्ज करें...';

  @override
  String get endDateHint => 'अंतिम तिथि दर्ज करें...';

  @override
  String get showAllCharges => 'सभी शुल्क दिखाएं';

  @override
  String get showOnlyRentCharges => 'केवल किराया शुल्क दिखाएं';

  @override
  String get paidAmount => 'भुगतान किया गया';

  @override
  String get balance => 'बकाया राशि';

  @override
  String get overdue => 'विलंबित';

  @override
  String get allowPartialPayments => 'आंशिक भुगतान की अनुमति दें';

  @override
  String get uploading => 'अपलोड हो रहा है...';

  @override
  String get communicationTitle => 'संचार';

  @override
  String get sendNotificationToTenants => 'किरायेदारों को सूचना भेजें';

  @override
  String get sendNotificationDescription =>
      'किरायेदारों को ऐप नोटिफिकेशन, ईमेल या दोनों के माध्यम से सूचना भेजें।';

  @override
  String get notifyViaApp => 'ऐप के माध्यम से सूचित करें';

  @override
  String get sendEmail => 'ईमेल भेजें';

  @override
  String get whoShouldReceiveNotification => 'सूचना किसे प्राप्त होनी चाहिए?';

  @override
  String get allProperties => 'सभी संपत्तियां';

  @override
  String get properties => 'संपत्तियां';

  @override
  String get chooseProperty => 'संपत्ति चुनें';

  @override
  String get selectAddress => 'पता चुनें';

  @override
  String get chooseAddress => 'पता चुनें';

  @override
  String get chooseUnit => 'यूनिट चुनें';

  @override
  String get notificationType => 'सूचना प्रकार';

  @override
  String get pushNotificationTitle => 'पुश नोटिफिकेशन शीर्षक';

  @override
  String get message => 'संदेश';

  @override
  String get subject => 'विषय';

  @override
  String get addSubject => 'विषय जोड़ें';

  @override
  String get enterText => 'अपना संदेश दर्ज करें...';
}

/// The translations for Hindi, as used in India (`hi_IN`).
class AppLocalizationsHiIn extends AppLocalizationsHi {
  AppLocalizationsHiIn() : super('hi_IN');

  @override
  String get commonGetStarted => 'शुरू हो जाओ';

  @override
  String commonHello(Object name) {
    return 'नमस्ते $name';
  }

  @override
  String get commonContinueButton => 'जारी रखें';

  @override
  String get commonCancelButton => 'रद्द करें';

  @override
  String get commonOk => 'ठीक है';

  @override
  String get commonAlertTitle => 'चेतावनी!';

  @override
  String get commonSignOut => 'साइन आउट';

  @override
  String get authLogin => 'लॉग इन करें';

  @override
  String get authRegister => 'रजिस्टर करें';

  @override
  String get authOrContinueWith => 'या इसके साथ जारी रखें';

  @override
  String get authEnterMobileNumber => 'मोबाइल नंबर दर्ज करें';

  @override
  String get authForgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get authDontHaveAnAccount => 'खाता नहीं है?';

  @override
  String get authTypeYourEmail => 'अपना ईमेल टाइप करें';

  @override
  String get authOrLoginWith => 'या इसके साथ लॉगिन करें';

  @override
  String get authEmailAndPassword => 'ईमेल और पासवर्ड';

  @override
  String get authEmail => 'ईमेल';

  @override
  String get authPassword => 'पासवर्ड';

  @override
  String get authTypeYourPassword => 'अपना पासवर्ड टाइप करें';

  @override
  String get authHaveAnAccount => 'खाता है?';

  @override
  String get authFirstName => 'पहला नाम';

  @override
  String get authLastName => 'अंतिम नाम';

  @override
  String get authPhoneNumber => 'फोन नंबर';

  @override
  String get authEmailVerificationTitle => 'ईमेल सत्यापन';

  @override
  String get authVerificationCodeSent => 'सत्यापन कोड सफलतापूर्वक भेजा गया';

  @override
  String get authOtpMessagePart1 => 'हमने आपके';

  @override
  String get authOtpMessagePart2 =>
      'ईमेल पते पर एक सत्यापन कोड भेजा है। अपना ईमेल पता सत्यापित करने के लिए नीचे कोड टाइप करें।';

  @override
  String get authVerificationCodeTitle => 'सत्यापन कोड';

  @override
  String get authResendCodeButton => 'कोड फिर से भेजें';

  @override
  String authSurveyWelcomeMessage(String firstName) {
    return 'इजाराहब में आपका स्वागत है, $firstName 👋';
  }

  @override
  String get authSurveyIntro => 'आइए आपको जानकर शुरू करें।';

  @override
  String get authSurveyPropertyCountLabel => 'आपकी अपनी संपत्तियां';

  @override
  String get authSurveyPropertyCountQuestion =>
      'आपके पास कितनी संपत्तियां हैं?';

  @override
  String get authSurveyUnitCountLabel => 'आपकी अपनी इकाइयां';

  @override
  String get authSurveyUnitCountQuestion => 'आपके पास कितनी इकाइयां हैं?';

  @override
  String get authLanguageSelectionSelectLanguageTitle => 'भाषा चुनें';

  @override
  String get authLanguageSelectionLanguageEnglish => 'अंग्रेजी';

  @override
  String get authForgotPasswordTitle => 'पासवर्ड भूल गए';

  @override
  String get authForgotPasswordMessage =>
      'अपना पंजीकृत ईमेल पता या फोन नंबर टाइप करें। हम आपके पंजीकृत संपर्क पर एक सत्यापन कोड भेजेंगे।';

  @override
  String get authSendButton => 'भेजें';

  @override
  String get authNewPasswordTitle => 'नया पासवर्ड';

  @override
  String get authNewPasswordEmailMessage =>
      'हमने आपके पंजीकृत संपर्क पर एक रीसेट कोड भेजा है। कृपया कोड के लिए अपना ईमेल या फोन जांचें।';

  @override
  String get authChangePasswordButton => 'पासवर्ड बदलें';

  @override
  String get authTypeNewPasswordLabel => 'अपना नया पासवर्ड टाइप करें';

  @override
  String get authTypeResetCodeLabel => 'अपना रीसेट कोड टाइप करें';

  @override
  String get authResetCodeTitle => 'रीसेट कोड';

  @override
  String get errorsAlertDialogArgumentError =>
      'तर्क विफल: चेतावनी संवाद बायां बटन फ़ंक्शन लागू नहीं है!';

  @override
  String get authAddYourPhoneNumber => 'अपना फ़ोन नंबर जोड़ें';

  @override
  String get authAddPhoneNumberMessage =>
      'कृपया अपना प्राथमिक फ़ोन नंबर जोड़ें';

  @override
  String get authTypeYourPhoneNumber => 'अपना फोन नंबर टाइप करें';

  @override
  String get commonAdd => 'जोड़ें';

  @override
  String get authEmailOrPhoneNumber => 'ईमेल या फोन नंबर';

  @override
  String get authPhoneToggle => 'फोन';

  @override
  String get authEmailToggle => 'ईमेल';

  @override
  String get commonLoading => 'लोड हो रहा है..';

  @override
  String get authGoogleSignInNotSupported =>
      'इस प्लेटफ़ॉर्म पर Google साइन-इन प्रमाणीकरण विधि का समर्थन नहीं करता है';

  @override
  String get authGoogleSignInCancelled =>
      'साइन-इन रद्द कर दिया गया था। यदि आप जारी रखना चाहते हैं तो कृपया पुनः प्रयास करें।';

  @override
  String get authGoogleSignInInterrupted =>
      'साइन-इन बाधित हो गया था। कृपया पुनः प्रयास करें।';

  @override
  String get authGoogleSignInClientConfigError =>
      'Google साइन-इन के साथ एक कॉन्फ़िगरेशन समस्या है। कृपया सहायता से संपर्क करें।';

  @override
  String get authGoogleSignInProviderConfigError =>
      'Google साइन-इन वर्तमान में अनुपलब्ध है। कृपया बाद में पुनः प्रयास करें।';

  @override
  String get authGoogleSignInUiUnavailable =>
      'Google साइन-इन वर्तमान में अनुपलब्ध है। कृपया बाद में पुनः प्रयास करें।';

  @override
  String get authGoogleSignInUserMismatch =>
      'आपके खाते में कोई समस्या थी। कृपया साइन आउट करें और पुनः प्रयास करें।';

  @override
  String get authGoogleSignInNetworkError =>
      'Google साइन-इन के दौरान एक नेटवर्क त्रुटि हुई। कृपया अपना कनेक्शन जांचें और पुनः प्रयास करें।';

  @override
  String get authGoogleSignInInternalError =>
      'Google साइन-इन के दौरान एक आंतरिक त्रुटि हुई। कृपया पुनः प्रयास करें।';

  @override
  String get authGoogleSignInServiceError =>
      'Google साइन-इन के दौरान एक सेवा त्रुटि हुई। कृपया बाद में पुनः प्रयास करें।';

  @override
  String get authGoogleSignInUnexpectedError =>
      'Google साइन-इन के दौरान एक अप्रत्याशित त्रुटि हुई। कृपया पुनः प्रयास करें।';

  @override
  String authGoogleSignInPlatformException(String message) {
    return 'प्लेटफ़ॉर्म अपवाद: $message';
  }

  @override
  String authGoogleSignInUnknownError(String error) {
    return 'अज्ञात त्रुटि: $error';
  }

  @override
  String get authFacebookLoginCancelledOrFailed => 'फेसबुक लॉगिन रद्द या विफल';

  @override
  String get authFacebookLoginInvalidState =>
      'अमान्य स्थिति पैरामीटर - संभावित CSRF हमला';

  @override
  String authFacebookLoginAuthFailed(String error) {
    return 'प्रमाणीकरण विफल: $error';
  }

  @override
  String authFacebookLoginFailed(String error) {
    return 'फेसबुक लॉगिन विफल: $error';
  }

  @override
  String get roleUser => 'उपयोगकर्ता';

  @override
  String get roleUnknown => 'अज्ञात भूमिका';

  @override
  String get maintenanceDemoMode => 'आप डेमो मोड में हैं';

  @override
  String get maintenanceExitDemo => 'डेमो से बाहर निकलें';

  @override
  String get maintenancePendingRequests => 'लंबित रखरखाव अनुरोध';

  @override
  String get maintenanceCompleted => 'पूरा हुआ';

  @override
  String get maintenanceAdd => 'जोड़ें';

  @override
  String get maintenanceSortFilter => 'सॉर्ट और फ़िल्टर';

  @override
  String get maintenanceExportData => 'डेटा एक्सपोर्ट';

  @override
  String get maintenanceSave => 'बदलाव सहेजें';

  @override
  String get maintenanceDetails => 'विवरण';

  @override
  String get maintenanceVideo => 'वीडियो';

  @override
  String get maintenanceTenants => 'किरायेदार';

  @override
  String get maintenanceStatus => 'स्थिति';

  @override
  String get maintenanceAssignTo => 'किसे सौंपा गया';

  @override
  String get maintenanceCategory => 'श्रेणी';

  @override
  String get maintenancePriority => 'प्राथमिकता';

  @override
  String get maintenanceLaborCost => 'श्रम लागत';

  @override
  String get maintenanceMaterialsCost => 'सामग्री लागत';

  @override
  String get maintenanceDelete => 'हटाएं';

  @override
  String get addMaintenanceTitle => 'नया रखरखाव अनुरोध जोड़ें';

  @override
  String get addMaintenanceSubTitle =>
      'उस संपत्ति और इकाई का चयन करें जिसके लिए আপনি नया रखरखाव अनुरोध बनाना चाहते हैं।';

  @override
  String get addressLabel => 'पता';

  @override
  String get unitLabel => 'यूनिट';

  @override
  String get commonContinue => 'जारी रखें';

  @override
  String get provideDetailsTitle => 'अनुरोध विवरण प्रदान करें';

  @override
  String get descriptionLabel => 'विवरण';

  @override
  String get descriptionHint => 'जैसे: टूटा हुआ फुटपाथ';

  @override
  String get priorityLabel => 'प्राथमिकता';

  @override
  String get categoryLabel => 'श्रेणी';

  @override
  String get accessInstructionsLabel => 'लैटचेल विक्रेता पहुंच निर्देश';

  @override
  String get notesLabel => 'नोट्स';

  @override
  String get commonBack => 'पीछे';

  @override
  String get commonSaveContinue => 'सहेजें और जारी रखें';

  @override
  String get current => 'वर्तमान';

  @override
  String get movingIn => 'अंदर आ रहे हैं';

  @override
  String get leaving => 'छोड़ रहे हैं';

  @override
  String get accepted => 'स्वीकृत';

  @override
  String get rejected => 'अस्वीकृत';

  @override
  String get prior => 'पूर्व';

  @override
  String get tenants => 'किरायेदार';

  @override
  String get leaseStarting => 'पट्टा शुरू';

  @override
  String get leaseEnding => 'पट्टा समाप्त';

  @override
  String get previousTenants => 'पिछले किरायेदार';

  @override
  String get renter => 'किरायेदार';

  @override
  String get address => 'पता';

  @override
  String get unit => 'यूनिट';

  @override
  String get rent => 'किराया';

  @override
  String get add => 'जोड़ें';

  @override
  String get addTenantDescription =>
      'किरायेदार को अपनी यूनिट से जोड़ें ताकि वे किराया देना शुरू कर सकें। अभी या बाद में ईमेल आमंत्रण और टेक्स्ट संदेश भेजें।';

  @override
  String get property => 'संपत्ति';

  @override
  String get selectProperty => 'संपत्ति चुनें';

  @override
  String get selectUnit => 'यूनिट चुनें';

  @override
  String get tenantFirstName => 'किरायेदार का पहला नाम';

  @override
  String get enterFirstName => 'पहला नाम दर्ज करें';

  @override
  String get firstNameEmptyError => 'पहला नाम खाली नहीं हो सकता';

  @override
  String get tenantLastName => 'किरायेदार का अंतिम नाम';

  @override
  String get enterLastName => 'अंतिम नाम दर्ज करें';

  @override
  String get lastNameEmptyError => 'अंतिम नाम खाली नहीं हो सकता';

  @override
  String get startAt => 'शुरू होने की तिथि';

  @override
  String get mmDdYyyy => 'माह/दिन/वर्ष';

  @override
  String get sendInvite => 'आमंत्रण भेजें';

  @override
  String get now => 'अभी';

  @override
  String get inviteNowSubtitle =>
      'जुड़ें और किरायेदार को आपके द्वारा सेटअप किए गए किसी भी शुल्क का भुगतान करने, लीज पर हस्ताक्षर करने और संदेश प्राप्त करने दें';

  @override
  String get skipLater => 'छोड़ें / बाद में';

  @override
  String get inviteLaterSubtitle =>
      'अभी आमंत्रित करने के लिए तैयार नहीं हैं? प्रोफ़ाइल बनाएं और अभी शुल्क सेट करें। तैयार होने पर आमंत्रण भेजें।';

  @override
  String get tenantEmail => 'किरायेदार का ईमेल';

  @override
  String get enterEmail => 'ईमेल पता दर्ज करें';

  @override
  String get emailEmptyError => 'ईमेल खाली नहीं हो सकता';

  @override
  String get tenantPhoneNumber => 'किरायेदार का फ़ोन नंबर';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get addTenant => 'किरायेदार जोड़ें';

  @override
  String get success => 'सफलता';

  @override
  String get tenantAddedSuccess => 'किरायेदार सफलतापूर्वक जोड़ा गया';

  @override
  String get error => 'त्रुटि';

  @override
  String get tenantDetails => 'किराएदार का विवरण';

  @override
  String get details => 'विवরণ';

  @override
  String get documents => 'दस्तावेज़';

  @override
  String get charges => 'शुल्क';

  @override
  String get status => 'स्थिति';

  @override
  String get currentTenant => 'वर्तमान किराएदार';

  @override
  String get tenantAppInstalled => 'किराएदार ऐप इंस्टॉल किया गया';

  @override
  String get connectedToUnit => 'किराएदार यूनिट से जुड़ा हुआ है 🙌';

  @override
  String get autopayInactive => 'ऑटोपे निष्क्रिय है';

  @override
  String get autopaySubtitle => 'किराएदार से ऑटोपे चालू करने के लिए कहें';

  @override
  String get generalInfo => 'सामान्य जानकारी';

  @override
  String get editDetails => 'विवरण संपादित करें';

  @override
  String get firstName => 'पहला नाम';

  @override
  String get lastName => 'अंतिम नाम';

  @override
  String get email => 'ईमेल';

  @override
  String get phone => 'फ़ोन';

  @override
  String get payments => 'भुगतान';

  @override
  String get notes => 'टिप्पणियाँ';

  @override
  String get leaseDetails => 'पट्टे का विवरण';

  @override
  String get leaseStartDate => 'पट्टा शुरू होने की तारीख';

  @override
  String get leaseEndDate => 'पट्टा समाप्त होने की तारीख';

  @override
  String get monthlyRent => 'मासिक पट्टा किराया';

  @override
  String get viewUnit => 'यूनिट देखें';

  @override
  String get screenTenant => 'किরাएदार की जांच करें';

  @override
  String get unlinkTenant => 'किराएदार को अलग करें';

  @override
  String get unlinkDialogTitle => 'किराएदार को यूनिट से अलग करें?';

  @override
  String get unlinkDialogContent =>
      'यह किराएदार को यूनिट से हटा देगा और उसे पूर्व किराएदार के रूप में चिह्नित करेगा।';

  @override
  String get unlink => 'अलग करें';

  @override
  String get uploadFile => 'फ़ाइल अपलोड करें';

  @override
  String get signLeaseFeatureTitle =>
      'किराएदार अब पट्टों पर हस्ताक्षर कर सकते हैं! ✨';

  @override
  String get uploadPdfDesc =>
      'हस्ताक्षर अनुरोध भेजने के लिए अपने पट्टे की एक पीडीएफ फाइल अपलोड करें।';

  @override
  String get addCharge => 'शुल्क जोड़ें';

  @override
  String get requestPayment => 'भुगतान का अनुरोध करें';

  @override
  String get noChargesFound => 'इस किरायेदार के लिए कोई शुल्क नहीं मिला।';

  @override
  String get paid => 'भुगतान किया';

  @override
  String get unpaid => 'अवैतनिक';

  @override
  String get lateFee => 'विलंब शुल्क';

  @override
  String get totalAmount => 'कुल राशि';

  @override
  String get due => 'देय';

  @override
  String get days => 'दिन';

  @override
  String get more => 'अधिक';

  @override
  String get from => 'से';

  @override
  String get to => 'तक';

  @override
  String get apply => 'लागू करें';

  @override
  String get startDateHint => 'आरंभ तिथि दर्ज करें...';

  @override
  String get endDateHint => 'अंतिम तिथि दर्ज करें...';

  @override
  String get showAllCharges => 'सभी शुल्क दिखाएं';

  @override
  String get showOnlyRentCharges => 'केवल किराया शुल्क दिखाएं';

  @override
  String get paidAmount => 'भुगतान किया गया';

  @override
  String get balance => 'बकाया राशि';

  @override
  String get overdue => 'विलंबित';

  @override
  String get allowPartialPayments => 'आंशिक भुगतान की अनुमति दें';

  @override
  String get uploading => 'अपलोड हो रहा है...';

  @override
  String get communicationTitle => 'संचार';

  @override
  String get sendNotificationToTenants => 'किरायेदारों को सूचना भेजें';

  @override
  String get sendNotificationDescription =>
      'किरायेदारों को ऐप नोटिफिकेशन, ईमेल या दोनों के माध्यम से सूचना भेजें।';

  @override
  String get notifyViaApp => 'ऐप के माध्यम से सूचित करें';

  @override
  String get sendEmail => 'ईमेल भेजें';

  @override
  String get whoShouldReceiveNotification => 'सूचना किसे प्राप्त होनी चाहिए?';

  @override
  String get allProperties => 'सभी संपत्तियां';

  @override
  String get properties => 'संपत्तियां';

  @override
  String get chooseProperty => 'संपत्ति चुनें';

  @override
  String get selectAddress => 'पता चुनें';

  @override
  String get chooseAddress => 'पता चुनें';

  @override
  String get chooseUnit => 'यूनिट चुनें';

  @override
  String get notificationType => 'सूचना प्रकार';

  @override
  String get pushNotificationTitle => 'पुश नोटिफिकेशन शीर्षक';

  @override
  String get message => 'संदेश';

  @override
  String get subject => 'विषय';

  @override
  String get addSubject => 'विषय जोड़ें';

  @override
  String get enterText => 'अपना संदेश दर्ज करें...';
}
