import 'package:get/get.dart';

import 'package:ijarahub/features/splash/views/screens/splash_screen.dart';

import '../../features/auth/views/screens/auth_language_selection_screen.dart';
import '../../features/auth/views/screens/login_screen.dart';

class AppRoutes {
  static const initial = splash;

  static const splash = '/splash';
  static const authLanguageSelection = '/authLanguageSelection';
  static const login = '/login';
  static const home = '/home';
  static const register = '/register';
  static const authEmailOtpVerification = '/authEmailOtpVerification';
  static const authSurveyScreen1 = '/authSurveyScreen1';
  static const authSurveyScreen2 = '/authSurveyScreen2';
  static const authAddPropertyScreen = '/authAddProperty';
  static const authSurveyScreen4 = '/authSurveyScreen4';
  static const authForgotPassword = '/authForgotPassword';
  static const newPasswordScreen = '/newPassword';
  static const authStart = '/authStart';
  static const loginWithEmailPassword = '/loginWithEmailPassword';
  static const authPhoneNumberOtpVerification =
      '/authPhoneNumberOtpVerification';
  static const propertyAll = '/propertyAll';
  static const authAddPhoneNumber = '/authAddPhoneNumber';
  static const addProperty = '/addProperty';
  static const authUserRoleSelector = '/authUserRoleSelector';
  static const addTenant = '/addTenant';
  static const rentCollectionScreen = '/rentCollectionScreen';
  static const selectChargeTypeScreen = '/selectChargeTypeScreen';
  static const leaseSetupScreen = '/leaseSetupScreen';
  static const addTenantScreen2 = '/addTenantScreen2';
  static const propertiesDashboardScreen = '/propertiesDashboardScreen';
  static const viewPropertyScreen = '/viewPropertyScreen';
  static const propertyDetailsScreen = '/propertyDetailsScreen';
  static const propertyScreen = '/propertyScreen';
  static const editChargeDetailsView = '/editChargeDetailsView';
  static const maintenanceScreen = '/maintenanceScreen';
  static const applicationDashboard = '/applicationDashboard';
  static const communicationScreen = '/communicationScreen';
  static const tenantHomeScreen1 = "/tenant_home_screen_1";
  static const tenantHomeScreen2 = "/tenant_home_screen_2";
  static const tenantMainbottomNavScreen = "/tenant_mainbottom_nav_creen";
  static final String tenantUnityDetailsScreen = '/tenant_unity_details_screen';
  static final String tenantPayRentScreen = "/tenant_pay_rent_screen";
  static final String myRentPaymentScreen = "/my_rent_payment_screen";
  static final String tenantProfileScreen = "/tenantProfileScreen";
  static final String tenantMaintenanceRequestScreen =
      "/tenantMaintenanceRequestScreen";
  static final String tenantAddRequestScreen = "/TenantAddRequestScreen";
  static final String rentersScreen = "/rentersScreen";
  static final String rentersDetailScreen = "/rentersDetailScreen";

  static final String maintenanceDetailScreen = "/maintenanceDetailScreen";
  static final String maintenanceRequestDialog = "/maintenanceRequestDialog";

  static String getTenantUnityDetailsScreen() => tenantUnityDetailsScreen;

  static final routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(
      name: authLanguageSelection,
      page: () => AuthLanguageSelectionScreen(),
    ),
    GetPage(name: login, page: () => LoginScreen()),

  ];
}
