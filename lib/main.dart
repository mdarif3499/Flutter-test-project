import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:najwa_brighach/core/binding/binding.dart';
import 'package:najwa_brighach/core/config/constants/auth_constants.dart';
import 'package:najwa_brighach/core/const/app_colors.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import 'package:najwa_brighach/core/services/debug_ervices/debug_service.dart';
import 'package:najwa_brighach/core/services/storage_services/storage_service.dart';

import 'core/app_theme.dart';
import 'core/const/token_key.dart';
import 'core/controller/app_state_controller.dart';
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
    final appStateController = Get.put(AppStateController());

    AppSizes().init(context);

    return Obx(() {
      return GetMaterialApp(
        title: 'Flutter test project',
        debugShowCheckedModeBanner: false,
        initialBinding: InitialBinding(),
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,

        themeMode: appStateController.themeMode,

        initialRoute: initialRoute,
        getPages: AppRoutes.routes,
        builder: EasyLoading.init(),
      );
    });
  }
}
