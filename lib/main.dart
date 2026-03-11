
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:najwa_brighach/core/config/constants/auth_constants.dart';
import 'package:najwa_brighach/core/const/app_colors.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import 'package:najwa_brighach/core/services/debug_ervices/debug_service.dart';
import 'package:najwa_brighach/core/services/storage_services/storage_service.dart';

import 'core/const/token_key.dart';
import 'core/helper/shared_preferences_helper.dart';
import 'core/route/route.dart';

@pragma('vm:entry-point')

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();


  await SharedPreferencesHelper().init();

  String? loginCheck = SharedPreferencesHelper().getString(TokenKey.login);

  String initialRoute;
  if (loginCheck != null) {
    initialRoute = AppRoutes.splashScreen;
  } else {
    initialRoute = AppRoutes.splashScreen;
  }

  runApp(MyApp(initialRoute: initialRoute));
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    DebugServices().logInfo(
      "Token: ${StorageService().getData(AuthConstants.accessToken)}",
    );



    return GetMaterialApp(
      title: 'Flutter test project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(),
        scaffoldBackgroundColor: AppColors.scaffoldBgColor,
      ),
      initialRoute: initialRoute,
      getPages: AppRoutes.routes,
      // home: NotGetCertificateScreen(),
      builder: EasyLoading.init(),
    );
  }
}






