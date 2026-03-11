// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get commonGetStarted => 'البدء';

  @override
  String commonHello(Object name) {
    return 'مرحباً $name';
  }

  @override
  String get commonContinueButton => 'متابعة';

  @override
  String get commonCancelButton => 'إلغاء';

  @override
  String get commonOk => 'موافق';

  @override
  String get commonAlertTitle => 'تنبيه!';

  @override
  String get commonSignOut => 'تسجيل الخروج';

  @override
  String get authLogin => 'تسجيل الدخول';

  @override
  String get authRegister => 'تسجيل';

  @override
  String get authOrContinueWith => 'أو المتابعة باستخدام';

  @override
  String get authEnterMobileNumber => 'أدخل رقم الجوال';

  @override
  String get authForgotPassword => 'هل نسيت كلمة السر؟';

  @override
  String get authDontHaveAnAccount => 'ليس لديك حساب؟';

  @override
  String get authTypeYourEmail => 'اكتب بريدك الإلكتروني';

  @override
  String get authOrLoginWith => 'أو تسجيل الدخول باستخدام';

  @override
  String get authEmailAndPassword => 'البريد الإلكتروني وكلمة المرور';

  @override
  String get authEmail => 'البريد الإلكتروني';

  @override
  String get authPassword => 'كلمة المرور';

  @override
  String get authTypeYourPassword => 'اكتب كلمة المرور الخاصة بك';

  @override
  String get authHaveAnAccount => 'هل لديك حساب؟';

  @override
  String get authFirstName => 'الاسم الأول';

  @override
  String get authLastName => 'اسم العائلة';

  @override
  String get authPhoneNumber => 'رقم الهاتف';

  @override
  String get authEmailVerificationTitle => 'التحقق من البريد الإلكتروني';

  @override
  String get authVerificationCodeSent => 'تم إرسال رمز التحقق بنجاح';

  @override
  String get authOtpMessagePart1 => 'لقد أرسلنا رمز التحقق إلى';

  @override
  String get authOtpMessagePart2 =>
      'عنوان بريدك الإلكتروني. اكتب الرمز أدناه للتحقق من عنوان بريدك الإلكتروني.';

  @override
  String get authOtpMessagePart2Phone =>
      'رقم هاتفك. اكتب الرمز أدناه للتحقق من رقم هاتفك.';

  @override
  String get authVerificationCodeTitle => 'رمز التحقق';

  @override
  String get authResendCodeButton => 'إعادة إرسال الرمز';

  @override
  String authSurveyWelcomeMessage(String firstName) {
    return 'مرحباً بك في إيجار هب، $firstName 👋';
  }

  @override
  String get authSurveyIntro => 'لنبدأ بالتعرف عليك.';

  @override
  String get authSurveyPropertyCountLabel => 'العقارات الخاصة بك';

  @override
  String get authSurveyPropertyCountQuestion => 'كم عدد العقارات التي تملكها؟';

  @override
  String get authSurveyUnitCountLabel => 'الوحدات الخاصة بك';

  @override
  String get authSurveyUnitCountQuestion => 'كم عدد الوحدات التي تملكها؟';

  @override
  String get authLanguageSelectionSelectLanguageTitle => 'اختر اللغة';

  @override
  String get authLanguageSelectionLanguageEnglish => 'الإنجليزية';

  @override
  String get authForgotPasswordTitle => 'نسيت كلمة المرور';

  @override
  String get authForgotPasswordMessage =>
      'اكتب عنوان بريدك الإلكتروني أو رقم هاتفك المسجل. سنرسل رمز التحقق إلى جهة الاتصال المسجلة لديك.';

  @override
  String get authSendButton => 'إرسال';

  @override
  String get authNewPasswordTitle => 'كلمة مرور جديدة';

  @override
  String get authNewPasswordEmailMessage =>
      'لقد أرسلنا رمز إعادة تعيين إلى جهة الاتصال المسجلة لديك. يرجى التحقق من بريدك الإلكتروني أو هاتفك للحصول على الرمز.';

  @override
  String get authChangePasswordButton => 'تغيير كلمة المرور';

  @override
  String get authTypeNewPasswordLabel => 'اكتب كلمة المرور الجديدة الخاصة بك';

  @override
  String get authTypeResetCodeLabel => 'اكتب رمز إعادة التعيين الخاص بك';

  @override
  String get authResetCodeTitle => 'رمز إعادة التعيين';

  @override
  String get errorsAlertDialogArgumentError =>
      'فشل الوسيط: لم يتم تنفيذ وظيفة الزر الأيسر في مربع الحوار!';

  @override
  String get authAddYourPhoneNumber => 'أضف رقم هاتفك';

  @override
  String get authAddPhoneNumberMessage => 'أضف رقم هاتفك الأساسي من فضلك';

  @override
  String get authTypeYourPhoneNumber => 'اكتب رقم هاتفك';

  @override
  String get commonAdd => 'إضافة';

  @override
  String get propertyNoUnitsAddedYet => 'لم تتم إضافة وحدات بعد.';

  @override
  String get propertyAddUnit => 'إضافة وحدة';

  @override
  String get propertyEnterPropertiesAndUnits => 'أدخل العقارات والوحدات';

  @override
  String get propertyAddProperty => 'إضافة عقار';

  @override
  String get commonAddress => 'العنوان';

  @override
  String get commonCity => 'المدينة';

  @override
  String get commonState => 'الولاية';

  @override
  String get commonZipCode => 'الرمز البريدي';

  @override
  String get authStartScreenTitle => 'ماذا تريد أن تفعل بعد ذلك؟';

  @override
  String get authStartScreenFinishSetupUnit => 'إنهاء إعداد الوحدة 1A';

  @override
  String get authStartScreenStartCollectingRent => 'ابدأ بتحصيل الإيجار';

  @override
  String get authStartScreenAddTenants => 'إضافة مستأجرين';

  @override
  String get authStartScreenShareSignLeases => 'مشاركة وتوقيع عقود الإيجار';

  @override
  String get authStartScreenSetupPaymentAccounts => 'إعداد حسابات الدفع';

  @override
  String get authStartScreenEasilyCollectRent => 'تحصيل الإيجار بسهولة';

  @override
  String get commonOr => 'Or';

  @override
  String get authStartScreenAddAnotherProperty => 'إضافة عقار آخر';

  @override
  String get authStartScreenYourProperties => 'عقاراتك';

  @override
  String get unitNameNumber => 'اسم/رقم الوحدة';

  @override
  String get unitNumberOfBedrooms => 'عدد غرف النوم';

  @override
  String get unitNumberOfBathrooms => 'عدد الحمامات';

  @override
  String get unitSquareFeet => 'قدم مربع';

  @override
  String get commonNotes => 'ملاحظات';

  @override
  String get authEmailOrPhoneNumber => 'البريد الإلكتروني أو رقم الهاتف';

  @override
  String get authPhoneToggle => 'هاتف';

  @override
  String get authEmailToggle => 'بريد إلكتروني';

  @override
  String get propertiesTitle => 'Properties';

  @override
  String get commonLoading => 'جاري التحميل..';

  @override
  String get authGoogleSignInNotSupported =>
      'تسجيل الدخول باستخدام جوجل غير مدعوم على هذا النظام الأساسي';

  @override
  String get authGoogleSignInCancelled =>
      'تم إلغاء تسجيل الدخول. يرجى المحاولة مرة أخرى إذا كنت ترغب في المتابعة.';

  @override
  String get authGoogleSignInInterrupted =>
      'تمت مقاطعة تسجيل الدخول. يرجى المحاولة مرة أخرى.';

  @override
  String get authGoogleSignInClientConfigError =>
      'توجد مشكلة في تهيئة تسجيل الدخول باستخدام جوجل. يرجى الاتصال بالدعم.';

  @override
  String get authGoogleSignInProviderConfigError =>
      'تسجيل الدخول باستخدام جوجل غير متاح حاليًا. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get authGoogleSignInUiUnavailable =>
      'تسجيل الدخول باستخدام جوجل غير متاح حاليًا. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get authGoogleSignInUserMismatch =>
      'حدثت مشكلة في حسابك. يرجى تسجيل الخروج والمحاولة مرة أخرى.';

  @override
  String get authGoogleSignInNetworkError =>
      'حدث خطأ في الشبكة أثناء تسجيل الدخول باستخدام جوجل. يرجى التحقق من اتصالك والمحاولة مرة أخرى.';

  @override
  String get authGoogleSignInInternalError =>
      'حدث خطأ داخلي أثناء تسجيل الدخول باستخدام جوجل. يرجى المحاولة مرة أخرى.';

  @override
  String get authGoogleSignInServiceError =>
      'حدث خطأ في الخدمة أثناء تسجيل الدخول باستخدام جوجل. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get authGoogleSignInUnexpectedError =>
      'حدث خطأ غير متوقع أثناء تسجيل الدخول باستخدام جوجل. يرجى المحاولة مرة أخرى.';

  @override
  String authGoogleSignInPlatformException(String message) {
    return 'خطأ في النظام الأساسي: $message';
  }

  @override
  String authGoogleSignInUnknownError(String error) {
    return 'خطأ غير معروف: $error';
  }

  @override
  String get authFacebookLoginCancelledOrFailed =>
      'تم إلغاء تسجيل الدخول عبر فيسبوك أو فشل';

  @override
  String get authFacebookLoginInvalidState =>
      'معامل حالة غير صالح - هجوم CSRF محتمل';

  @override
  String authFacebookLoginAuthFailed(String error) {
    return 'فشل المصادقة: $error';
  }

  @override
  String authFacebookLoginFailed(String error) {
    return 'فشل تسجيل الدخول عبر فيسبوك: $error';
  }

  @override
  String get authSurveyPleaseSelectDate => 'الرجاء تحديد تاريخ';

  @override
  String get authSurveyReadyToCollectRent => 'جاهز لتحصيل الإيجار؟ ✨';

  @override
  String get authSurveyTeamReadyToAssist =>
      'لدينا فريق جاهز لمساعدتك والبدء في تحصيل الإيجار!';

  @override
  String get authSurveyStartingOn => 'ابتداءً من';

  @override
  String get authSurveyNotInNearFuture => 'ليس في المستقبل القريب';

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
  String get authRoleSelectorTitle => 'ماذا يصفك بشكل أفضل؟';

  @override
  String get commonSelectLanguage => 'Select Language';

  @override
  String get commonLanguageEnglish => 'English';

  @override
  String get commonLanguageHindi => 'हिंदी';

  @override
  String get commonLanguageArabic => 'العربية';

  @override
  String get roleLandlord => 'مالك العقار';

  @override
  String get roleTenant => 'مستأجر';

  @override
  String get rolePropertyManager => 'مدير عقارات';

  @override
  String get roleMaintenancePerson => 'عامل صيانة';

  @override
  String get roleUser => 'مستخدم';

  @override
  String get roleUnknown => 'دور غير معروف';

  @override
  String get maintenanceDemoMode => 'أنت في وضع التجريب';

  @override
  String get maintenanceExitDemo => 'خروج من التجريب';

  @override
  String get maintenancePendingRequests => 'طلبات الصيانة قيد الانتظار';

  @override
  String get maintenanceCompleted => 'تم الإكمال';

  @override
  String get maintenanceAdd => 'إضافة';

  @override
  String get maintenanceSortFilter => 'فرز وتصفية';

  @override
  String get maintenanceExportData => 'تصدير البيانات';

  @override
  String get maintenanceSave => 'حفظ التغييرات';

  @override
  String get maintenanceDetails => 'التفاصيل';

  @override
  String get maintenanceVideo => 'فيديو';

  @override
  String get maintenanceTenants => 'المستأجرين';

  @override
  String get maintenanceStatus => 'الحالة';

  @override
  String get maintenanceAssignTo => 'تعيين إلى';

  @override
  String get maintenanceCategory => 'الفئة';

  @override
  String get maintenancePriority => 'الأولوية';

  @override
  String get maintenanceLaborCost => 'تكلفة العمالة';

  @override
  String get maintenanceMaterialsCost => 'تكلفة المواد';

  @override
  String get maintenanceDelete => 'حذف';

  @override
  String get addMaintenanceTitle => 'إضافة طلب صيانة جديد';

  @override
  String get addMaintenanceSubTitle =>
      'حدد العقار والوحدة التي ترغب في إنشاء طلب صيانة جديد لها.';

  @override
  String get addressLabel => 'العنوان';

  @override
  String get unitLabel => 'الوحدة';

  @override
  String get commonContinue => 'استمرار';

  @override
  String get provideDetailsTitle => 'تقديم تفاصيل الطلب';

  @override
  String get descriptionLabel => 'الوصف';

  @override
  String get descriptionHint => 'مثال: رصيف مكسور';

  @override
  String get priorityLabel => 'الأولوية';

  @override
  String get categoryLabel => 'الفئة';

  @override
  String get accessInstructionsLabel => 'تعليمات وصول البائع لاتشيل';

  @override
  String get notesLabel => 'ملاحظات';

  @override
  String get commonBack => 'رجوع';

  @override
  String get commonSaveContinue => 'حفظ واستمرار';

  @override
  String get current => 'حالي';

  @override
  String get movingIn => 'ينتقل للداخل';

  @override
  String get leaving => 'مغادرة';

  @override
  String get accepted => 'مقبول';

  @override
  String get rejected => 'مرفوض';

  @override
  String get prior => 'سابق';

  @override
  String get tenants => 'مستأجرين';

  @override
  String get leaseStarting => 'بدء الإيجار';

  @override
  String get leaseEnding => 'انتهاء الإيجার';

  @override
  String get previousTenants => 'المستأجرين السابقين';

  @override
  String get renter => 'مستأجر';

  @override
  String get address => 'عنوان';

  @override
  String get unit => 'الوحدة';

  @override
  String get rent => 'الإيجار';

  @override
  String get add => 'إضافة';

  @override
  String get addTenantDescription =>
      'قم بتوصيل المستأجر بوحدتك للسماح له بالبدء في دفع الإيجار. أرسل دعوة عبر البريد الإلكتروني ورسالة نصية الآن أو لاحقًا.';

  @override
  String get property => 'عقار';

  @override
  String get selectProperty => 'اختر العقار';

  @override
  String get selectUnit => 'اختر الوحدة';

  @override
  String get tenantFirstName => 'الاسم الأول للمستأجر';

  @override
  String get enterFirstName => 'أدخل الاسم الأول';

  @override
  String get firstNameEmptyError => 'لا يمكن أن يكون الاسم الأول فارغًا';

  @override
  String get tenantLastName => 'اسم عائلة المستأجر';

  @override
  String get enterLastName => 'أدخل اسم العائلة';

  @override
  String get lastNameEmptyError => 'لا يمكن أن يكون اسم العائلة فارغًا';

  @override
  String get startAt => 'يبدأ في';

  @override
  String get mmDdYyyy => 'شهر/يوم/سنة';

  @override
  String get sendInvite => 'إرسال دعوة';

  @override
  String get now => 'الآن';

  @override
  String get inviteNowSubtitle =>
      'تواصل واسمح للمستأجر بدفع أي رسوم تقوم بإعدادها وتوقيع عقود الإيجار واستلام الرسائل';

  @override
  String get skipLater => 'تخطي / لاحقًا';

  @override
  String get inviteLaterSubtitle =>
      'ليس جاهزًا للدعوة بعد؟ قم بإنشاء ملف تعريف وإعداد الرسوم الآن. أرسل الدعوة عندما تكون مستعدًا.';

  @override
  String get tenantEmail => 'البريد الإلكتروني للمستأجر';

  @override
  String get enterEmail => 'أدخل عنوان البريد الإلكتروني';

  @override
  String get emailEmptyError => 'البريد الإلكتروني لا يمكن أن يكون فارغا';

  @override
  String get tenantPhoneNumber => 'رقم هاتف المستأجر';

  @override
  String get cancel => 'إلغاء';

  @override
  String get addTenant => 'إضافة مستأجر';

  @override
  String get success => 'نجاح';

  @override
  String get tenantAddedSuccess => 'تم إضافة المستأجر بنجاح';

  @override
  String get error => 'خطأ';

  @override
  String get tenantDetails => 'تفاصيل المستأجر';

  @override
  String get details => 'التفاصيل';

  @override
  String get documents => 'المستندات';

  @override
  String get charges => 'الرسوم';

  @override
  String get status => 'الحالة';

  @override
  String get currentTenant => 'المستأجر الحالي';

  @override
  String get tenantAppInstalled => 'تم تثبيت تطبيق المستأجر';

  @override
  String get connectedToUnit => 'تم ربط المستأجر بالوحدة 🙌';

  @override
  String get autopayInactive => 'الدفع التلقائي غير مفعل';

  @override
  String get autopaySubtitle => 'اطلب من المستأجر تفعيل الدفع التلقائي';

  @override
  String get generalInfo => 'معلومات عامة';

  @override
  String get editDetails => 'تعديل التفاصيل';

  @override
  String get firstName => 'الاسم الأول';

  @override
  String get lastName => 'اسم العائلة';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get phone => 'الهاتف';

  @override
  String get payments => 'المدفوعات';

  @override
  String get notes => 'ملاحظات';

  @override
  String get leaseDetails => 'تفاصيل عقد الإيجار';

  @override
  String get leaseStartDate => 'تاريخ بدء الإيجار';

  @override
  String get leaseEndDate => 'تاريخ انتهاء الإيجار';

  @override
  String get monthlyRent => 'الإيجار الشهري';

  @override
  String get viewUnit => 'عرض الوحدة';

  @override
  String get screenTenant => 'فحص المستأجر';

  @override
  String get unlinkTenant => 'إلغاء ربط المستأجر';

  @override
  String get unlinkDialogTitle => 'إلغاء ربط المستأجر من الوحدة؟';

  @override
  String get unlinkDialogContent =>
      'سيؤدي هذا إلى إزالة المستأجر من الوحدة وتمييزه كمستأجر سابق.';

  @override
  String get unlink => 'إلغاء الربط';

  @override
  String get uploadFile => 'تحميل ملف';

  @override
  String get signLeaseFeatureTitle => 'يمكن للمستأجرين الآن توقيع العقود! ✨';

  @override
  String get uploadPdfDesc =>
      'قم بتحميل ملف PDF لعقد الإيجار الخاص بك لإرسال طلب توقيع.';

  @override
  String get addCharge => 'إضافة رسوم';

  @override
  String get requestPayment => 'طلب دفع';

  @override
  String get noChargesFound => 'لم يتم العثور على رسوم لهذا المستأجر.';

  @override
  String get paid => 'مدفوع';

  @override
  String get unpaid => 'غير مدفوع';

  @override
  String get lateFee => 'رسوم تأخير';

  @override
  String get totalAmount => 'المبلغ الإجمالي';

  @override
  String get due => 'مستحق';

  @override
  String get days => 'أيام';

  @override
  String get more => 'المزيد';

  @override
  String get from => 'من';

  @override
  String get to => 'إلى';

  @override
  String get apply => 'تطبيق';

  @override
  String get startDateHint => 'أدخل تاريخ البدء...';

  @override
  String get endDateHint => 'أدخل تاريخ الانتهاء...';

  @override
  String get showAllCharges => 'عرض جميع الرسوم';

  @override
  String get showOnlyRentCharges => 'عرض رسوم الإيجار فقط';

  @override
  String get paidAmount => 'المدفوع';

  @override
  String get balance => 'الرصيد';

  @override
  String get overdue => 'متأخر';

  @override
  String get allowPartialPayments => 'السماح بالدفع الجزئي';

  @override
  String get uploading => 'جارٍ التحميل...';

  @override
  String get communicationTitle => 'الاتصال';

  @override
  String get sendNotificationToTenants => 'إرسال إشعار للمستأجرين';

  @override
  String get sendNotificationDescription =>
      'إرسال إشعار للمستأجرين عبر إشعار داخل التطبيق، البريد الإلكتروني، أو كلاهما.';

  @override
  String get notifyViaApp => 'الإشعار عبر التطبيق';

  @override
  String get sendEmail => 'إرسال بريد إلكتروني';

  @override
  String get whoShouldReceiveNotification => 'من يجب أن يتلقى الإشعار؟';

  @override
  String get allProperties => 'جميع العقارات';

  @override
  String get properties => 'العقارات';

  @override
  String get chooseProperty => 'اختر العقار';

  @override
  String get selectAddress => 'اختر العنوان';

  @override
  String get chooseAddress => 'اختر العنوان';

  @override
  String get chooseUnit => 'اختر الوحدة';

  @override
  String get notificationType => 'نوع الإشعار';

  @override
  String get pushNotificationTitle => 'عنوان الإشعار الفوري';

  @override
  String get message => 'الرسالة';

  @override
  String get subject => 'الموضوع';

  @override
  String get addSubject => 'أضف الموضوع';

  @override
  String get enterText => 'أدخل نصك...';
}

/// The translations for Arabic, as used in the United Arab Emirates (`ar_AE`).
class AppLocalizationsArAe extends AppLocalizationsAr {
  AppLocalizationsArAe() : super('ar_AE');

  @override
  String get commonGetStarted => 'البدء';

  @override
  String commonHello(Object name) {
    return 'مرحباً $name';
  }

  @override
  String get commonContinueButton => 'متابعة';

  @override
  String get commonCancelButton => 'إلغاء';

  @override
  String get commonOk => 'موافق';

  @override
  String get commonAlertTitle => 'تنبيه!';

  @override
  String get commonSignOut => 'تسجيل الخروج';

  @override
  String get authLogin => 'تسجيل الدخول';

  @override
  String get authRegister => 'تسجيل';

  @override
  String get authOrContinueWith => 'أو المتابعة باستخدام';

  @override
  String get authEnterMobileNumber => 'أدخل رقم الجوال';

  @override
  String get authForgotPassword => 'هل نسيت كلمة السر؟';

  @override
  String get authDontHaveAnAccount => 'ليس لديك حساب؟';

  @override
  String get authTypeYourEmail => 'اكتب بريدك الإلكتروني';

  @override
  String get authOrLoginWith => 'أو تسجيل الدخول باستخدام';

  @override
  String get authEmailAndPassword => 'البريد الإلكتروني وكلمة المرور';

  @override
  String get authEmail => 'البريد الإلكتروني';

  @override
  String get authPassword => 'كلمة المرور';

  @override
  String get authTypeYourPassword => 'اكتب كلمة المرور الخاصة بك';

  @override
  String get authHaveAnAccount => 'هل لديك حساب؟';

  @override
  String get authFirstName => 'الاسم الأول';

  @override
  String get authLastName => 'اسم العائلة';

  @override
  String get authPhoneNumber => 'رقم الهاتف';

  @override
  String get authEmailVerificationTitle => 'التحقق من البريد الإلكتروني';

  @override
  String get authVerificationCodeSent => 'تم إرسال رمز التحقق بنجاح';

  @override
  String get authOtpMessagePart1 => 'لقد أرسلنا رمز التحقق إلى';

  @override
  String get authOtpMessagePart2 =>
      'عنوان بريدك الإلكتروني. اكتب الرمز أدناه للتحقق من عنوان بريدك الإلكتروني.';

  @override
  String get authVerificationCodeTitle => 'رمز التحقق';

  @override
  String get authResendCodeButton => 'إعادة إرسال الرمز';

  @override
  String authSurveyWelcomeMessage(String firstName) {
    return 'مرحباً بك في إيجار هب، $firstName 👋';
  }

  @override
  String get authSurveyIntro => 'لنبدأ بالتعرف عليك.';

  @override
  String get authSurveyPropertyCountLabel => 'العقارات الخاصة بك';

  @override
  String get authSurveyPropertyCountQuestion => 'كم عدد العقارات التي تملكها؟';

  @override
  String get authSurveyUnitCountLabel => 'الوحدات الخاصة بك';

  @override
  String get authSurveyUnitCountQuestion => 'كم عدد الوحدات التي تملكها؟';

  @override
  String get authLanguageSelectionSelectLanguageTitle => 'اختر اللغة';

  @override
  String get authLanguageSelectionLanguageEnglish => 'الإنجليزية';

  @override
  String get authForgotPasswordTitle => 'نسيت كلمة المرور';

  @override
  String get authForgotPasswordMessage =>
      'اكتب عنوان بريدك الإلكتروني أو رقم هاتفك المسجل. سنرسل رمز التحقق إلى جهة الاتصال المسجلة لديك.';

  @override
  String get authSendButton => 'إرسال';

  @override
  String get authNewPasswordTitle => 'كلمة مرور جديدة';

  @override
  String get authNewPasswordEmailMessage =>
      'لقد أرسلنا رمز إعادة تعيين إلى جهة الاتصال المسجلة لديك. يرجى التحقق من بريدك الإلكتروني أو هاتفك للحصول على الرمز.';

  @override
  String get authChangePasswordButton => 'تغيير كلمة المرور';

  @override
  String get authTypeNewPasswordLabel => 'اكتب كلمة المرور الجديدة الخاصة بك';

  @override
  String get authTypeResetCodeLabel => 'اكتب رمز إعادة التعيين الخاص بك';

  @override
  String get authResetCodeTitle => 'رمز إعادة التعيين';

  @override
  String get errorsAlertDialogArgumentError =>
      'فشل الوسيط: لم يتم تنفيذ وظيفة الزر الأيسر في مربع الحوار!';

  @override
  String get authAddYourPhoneNumber => 'أضف رقم هاتفك';

  @override
  String get authAddPhoneNumberMessage => 'أضف رقم هاتفك الأساسي من فضلك';

  @override
  String get commonAdd => 'إضافة';

  @override
  String get authEmailOrPhoneNumber => 'البريد الإلكتروني أو رقم الهاتف';

  @override
  String get authPhoneToggle => 'هاتف';

  @override
  String get authEmailToggle => 'بريد إلكتروني';

  @override
  String get commonLoading => 'جاري التحميل..';

  @override
  String get authGoogleSignInNotSupported =>
      'تسجيل الدخول باستخدام جوجل غير مدعوم على هذا النظام الأساسي';

  @override
  String get authGoogleSignInCancelled =>
      'تم إلغاء تسجيل الدخول. يرجى المحاولة مرة أخرى إذا كنت ترغب في المتابعة.';

  @override
  String get authGoogleSignInInterrupted =>
      'تمت مقاطعة تسجيل الدخول. يرجى المحاولة مرة أخرى.';

  @override
  String get authGoogleSignInClientConfigError =>
      'توجد مشكلة في تهيئة تسجيل الدخول باستخدام جوجل. يرجى الاتصال بالدعم.';

  @override
  String get authGoogleSignInProviderConfigError =>
      'تسجيل الدخول باستخدام جوجل غير متاح حاليًا. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get authGoogleSignInUiUnavailable =>
      'تسجيل الدخول باستخدام جوجل غير متاح حاليًا. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get authGoogleSignInUserMismatch =>
      'حدثت مشكلة في حسابك. يرجى تسجيل الخروج والمحاولة مرة أخرى.';

  @override
  String get authGoogleSignInNetworkError =>
      'حدث خطأ في الشبكة أثناء تسجيل الدخول باستخدام جوجل. يرجى التحقق من اتصالك والمحاولة مرة أخرى.';

  @override
  String get authGoogleSignInInternalError =>
      'حدث خطأ داخلي أثناء تسجيل الدخول باستخدام جوجل. يرجى المحاولة مرة أخرى.';

  @override
  String get authGoogleSignInServiceError =>
      'حدث خطأ في الخدمة أثناء تسجيل الدخول باستخدام جوجل. يرجى المحاولة مرة أخرى لاحقًا.';

  @override
  String get authGoogleSignInUnexpectedError =>
      'حدث خطأ غير متوقع أثناء تسجيل الدخول باستخدام جوجل. يرجى المحاولة مرة أخرى.';

  @override
  String authGoogleSignInPlatformException(String message) {
    return 'خطأ في النظام الأساسي: $message';
  }

  @override
  String authGoogleSignInUnknownError(String error) {
    return 'خطأ غير معروف: $error';
  }

  @override
  String get authFacebookLoginCancelledOrFailed =>
      'تم إلغاء تسجيل الدخول عبر فيسبوك أو فشل';

  @override
  String get authFacebookLoginInvalidState =>
      'معامل حالة غير صالح - هجوم CSRF محتمل';

  @override
  String authFacebookLoginAuthFailed(String error) {
    return 'فشل المصادقة: $error';
  }

  @override
  String authFacebookLoginFailed(String error) {
    return 'فشل تسجيل الدخول عبر فيسبوك: $error';
  }

  @override
  String get roleUser => 'مستخدم';

  @override
  String get roleUnknown => 'دور غير معروف';

  @override
  String get maintenanceDemoMode => 'أنت في وضع التجريب';

  @override
  String get maintenanceExitDemo => 'خروج من التجريب';

  @override
  String get maintenancePendingRequests => 'طلبات الصيانة قيد الانتظار';

  @override
  String get maintenanceCompleted => 'تم الإكمال';

  @override
  String get maintenanceAdd => 'إضافة';

  @override
  String get maintenanceSortFilter => 'فرز وتصفية';

  @override
  String get maintenanceExportData => 'تصدير البيانات';

  @override
  String get maintenanceSave => 'حفظ التغييرات';

  @override
  String get maintenanceDetails => 'التفاصيل';

  @override
  String get maintenanceVideo => 'فيديو';

  @override
  String get maintenanceTenants => 'المستأجرين';

  @override
  String get maintenanceStatus => 'الحالة';

  @override
  String get maintenanceAssignTo => 'تعيين إلى';

  @override
  String get maintenanceCategory => 'الفئة';

  @override
  String get maintenancePriority => 'الأولوية';

  @override
  String get maintenanceLaborCost => 'تكلفة العمالة';

  @override
  String get maintenanceMaterialsCost => 'تكلفة المواد';

  @override
  String get maintenanceDelete => 'حذف';

  @override
  String get addMaintenanceTitle => 'إضافة طلب صيانة جديد';

  @override
  String get addMaintenanceSubTitle =>
      'حدد العقار والوحدة التي ترغب في إنشاء طلب صيانة جديد لها.';

  @override
  String get addressLabel => 'العنوان';

  @override
  String get unitLabel => 'الوحدة';

  @override
  String get commonContinue => 'استمرار';

  @override
  String get provideDetailsTitle => 'تقديم تفاصيل الطلب';

  @override
  String get descriptionLabel => 'الوصف';

  @override
  String get descriptionHint => 'مثال: رصيف مكسور';

  @override
  String get priorityLabel => 'الأولوية';

  @override
  String get categoryLabel => 'الفئة';

  @override
  String get accessInstructionsLabel => 'تعليمات وصول البائع لاتشيل';

  @override
  String get notesLabel => 'ملاحظات';

  @override
  String get commonBack => 'رجوع';

  @override
  String get commonSaveContinue => 'حفظ واستمرار';

  @override
  String get current => 'حالي';

  @override
  String get movingIn => 'ينتقل للداخل';

  @override
  String get leaving => 'مغادرة';

  @override
  String get accepted => 'مقبول';

  @override
  String get rejected => 'مرفوض';

  @override
  String get prior => 'سابق';

  @override
  String get tenants => 'مستأجرين';

  @override
  String get leaseStarting => 'بدء الإيجار';

  @override
  String get leaseEnding => 'انتهاء الإيجার';

  @override
  String get previousTenants => 'المستأجرين السابقين';

  @override
  String get renter => 'مستأجر';

  @override
  String get address => 'عنوان';

  @override
  String get unit => 'الوحدة';

  @override
  String get rent => 'الإيجار';

  @override
  String get add => 'إضافة';

  @override
  String get addTenantDescription =>
      'قم بتوصيل المستأجر بوحدتك للسماح له بالبدء في دفع الإيجار. أرسل دعوة عبر البريد الإلكتروني ورسالة نصية الآن أو لاحقًا.';

  @override
  String get property => 'عقار';

  @override
  String get selectProperty => 'اختر العقار';

  @override
  String get selectUnit => 'اختر الوحدة';

  @override
  String get tenantFirstName => 'الاسم الأول للمستأجر';

  @override
  String get enterFirstName => 'أدخل الاسم الأول';

  @override
  String get firstNameEmptyError => 'لا يمكن أن يكون الاسم الأول فارغًا';

  @override
  String get tenantLastName => 'اسم عائلة المستأجر';

  @override
  String get enterLastName => 'أدخل اسم العائلة';

  @override
  String get lastNameEmptyError => 'لا يمكن أن يكون اسم العائلة فارغًا';

  @override
  String get startAt => 'يبدأ في';

  @override
  String get mmDdYyyy => 'شهر/يوم/سنة';

  @override
  String get sendInvite => 'إرسال دعوة';

  @override
  String get now => 'الآن';

  @override
  String get inviteNowSubtitle =>
      'تواصل واسمح للمستأجر بدفع أي رسوم تقوم بإعدادها وتوقيع عقود الإيجار واستلام الرسائل';

  @override
  String get skipLater => 'تخطي / لاحقًا';

  @override
  String get inviteLaterSubtitle =>
      'ليس جاهزًا للدعوة بعد؟ قم بإنشاء ملف تعريف وإعداد الرسوم الآن. أرسل الدعوة عندما تكون مستعدًا.';

  @override
  String get tenantEmail => 'البريد الإلكتروني للمستأجر';

  @override
  String get enterEmail => 'أدخل عنوان البريد الإلكتروني';

  @override
  String get emailEmptyError => 'البريد الإلكتروني لا يمكن أن يكون فارغا';

  @override
  String get tenantPhoneNumber => 'رقم هاتف المستأجر';

  @override
  String get cancel => 'إلغاء';

  @override
  String get addTenant => 'إضافة مستأجر';

  @override
  String get success => 'نجاح';

  @override
  String get tenantAddedSuccess => 'تم إضافة المستأجر بنجاح';

  @override
  String get error => 'خطأ';

  @override
  String get tenantDetails => 'تفاصيل المستأجر';

  @override
  String get details => 'التفاصيل';

  @override
  String get documents => 'المستندات';

  @override
  String get charges => 'الرسوم';

  @override
  String get status => 'الحالة';

  @override
  String get currentTenant => 'المستأجر الحالي';

  @override
  String get tenantAppInstalled => 'تم تثبيت تطبيق المستأجر';

  @override
  String get connectedToUnit => 'تم ربط المستأجر بالوحدة 🙌';

  @override
  String get autopayInactive => 'الدفع التلقائي غير مفعل';

  @override
  String get autopaySubtitle => 'اطلب من المستأجر تفعيل الدفع التلقائي';

  @override
  String get generalInfo => 'معلومات عامة';

  @override
  String get editDetails => 'تعديل التفاصيل';

  @override
  String get firstName => 'الاسم الأول';

  @override
  String get lastName => 'اسم العائلة';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get phone => 'الهاتف';

  @override
  String get payments => 'المدفوعات';

  @override
  String get notes => 'ملاحظات';

  @override
  String get leaseDetails => 'تفاصيل عقد الإيجار';

  @override
  String get leaseStartDate => 'تاريخ بدء الإيجار';

  @override
  String get leaseEndDate => 'تاريخ انتهاء الإيجار';

  @override
  String get monthlyRent => 'الإيجار الشهري';

  @override
  String get viewUnit => 'عرض الوحدة';

  @override
  String get screenTenant => 'فحص المستأجر';

  @override
  String get unlinkTenant => 'إلغاء ربط المستأجر';

  @override
  String get unlinkDialogTitle => 'إلغاء ربط المستأجر من الوحدة؟';

  @override
  String get unlinkDialogContent =>
      'سيؤدي هذا إلى إزالة المستأجر من الوحدة وتمييزه كمستأجر سابق.';

  @override
  String get unlink => 'إلغاء الربط';

  @override
  String get uploadFile => 'تحميل ملف';

  @override
  String get signLeaseFeatureTitle => 'يمكن للمستأجرين الآن توقيع العقود! ✨';

  @override
  String get uploadPdfDesc =>
      'قم بتحميل ملف PDF لعقد الإيجار الخاص بك لإرسال طلب توقيع.';

  @override
  String get addCharge => 'إضافة رسوم';

  @override
  String get requestPayment => 'طلب دفع';

  @override
  String get noChargesFound => 'لم يتم العثور على رسوم لهذا المستأجر.';

  @override
  String get paid => 'مدفوع';

  @override
  String get unpaid => 'غير مدفوع';

  @override
  String get lateFee => 'رسوم تأخير';

  @override
  String get totalAmount => 'المبلغ الإجمالي';

  @override
  String get due => 'مستحق';

  @override
  String get days => 'أيام';

  @override
  String get more => 'المزيد';

  @override
  String get from => 'من';

  @override
  String get to => 'إلى';

  @override
  String get apply => 'تطبيق';

  @override
  String get startDateHint => 'أدخل تاريخ البدء...';

  @override
  String get endDateHint => 'أدخل تاريخ الانتهاء...';

  @override
  String get showAllCharges => 'عرض جميع الرسوم';

  @override
  String get showOnlyRentCharges => 'عرض رسوم الإيجار فقط';

  @override
  String get paidAmount => 'المدفوع';

  @override
  String get balance => 'الرصيد';

  @override
  String get overdue => 'متأخر';

  @override
  String get allowPartialPayments => 'السماح بالدفع الجزئي';

  @override
  String get uploading => 'جارٍ التحميل...';

  @override
  String get communicationTitle => 'الاتصال';

  @override
  String get sendNotificationToTenants => 'إرسال إشعار للمستأجرين';

  @override
  String get sendNotificationDescription =>
      'إرسال إشعار للمستأجرين عبر إشعار داخل التطبيق، البريد الإلكتروني، أو كلاهما.';

  @override
  String get notifyViaApp => 'الإشعار عبر التطبيق';

  @override
  String get sendEmail => 'إرسال بريد إلكتروني';

  @override
  String get whoShouldReceiveNotification => 'من يجب أن يتلقى الإشعار؟';

  @override
  String get allProperties => 'جميع العقارات';

  @override
  String get properties => 'العقارات';

  @override
  String get chooseProperty => 'اختر العقار';

  @override
  String get selectAddress => 'اختر العنوان';

  @override
  String get chooseAddress => 'اختر العنوان';

  @override
  String get chooseUnit => 'اختر الوحدة';

  @override
  String get notificationType => 'نوع الإشعار';

  @override
  String get pushNotificationTitle => 'عنوان الإشعار الفوري';

  @override
  String get message => 'الرسالة';

  @override
  String get subject => 'الموضوع';

  @override
  String get addSubject => 'أضف الموضوع';

  @override
  String get enterText => 'أدخل نصك...';
}
