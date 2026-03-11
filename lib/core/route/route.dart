import 'package:get/get_navigation/get_navigation.dart';
import 'package:najwa_brighach/feature/nav_bar/screen/nav_bar_screen.dart';

import 'package:najwa_brighach/feature/splash/presentations/screens/splash_screen.dart';



import '../../feature/auth/screen/sign_in_screen.dart';



class AppRoutes {
  static const String splashScreen = "/";
  static const String onboardingScreen = "/onboardingScreen";
  static const String signInScreen = "/signInScreen";
  static const String signUpScreen = "/signUpScreen";

  static const String navBarScreen = "/navBarScreen";
  static const String settingsScreen = "/settingsScreen";



  static List<GetPage> routes = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      transition: Transition.leftToRight,
    ),


    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      transition: Transition.leftToRight,
    ),


    GetPage(
      name: navBarScreen,
      page: () => NavBarScreen(),
      transition: Transition.leftToRight,
    ),












  ];
}
