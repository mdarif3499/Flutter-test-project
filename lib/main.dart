import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ijarahub/l10n/app_localizations.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'core/app_theme.dart';
import 'core/bindings/register_services.dart';
import 'core/config/app_config.dart';
import 'core/enums/language_local_enums.dart';
import 'core/controllers/app_state_controller.dart';
import 'core/error/error_handler.dart';
import 'core/routing/app_routes.dart';

void main() {
  runZonedGuarded(
    () async {

      WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      AppConfig.config();
      await SentryFlutter.init((options) {
        options.dsn = AppConfig.sentryDsn;
        // For performance monitoring, it's recommended to set a tracesSampleRate.
        // 1.0 captures 100% of transactions for performance monitoring.
        // In production, you may want to lower this value (e.g., 0.2)
        options.tracesSampleRate = 1.0;
        options.sendDefaultPii = true;
      });
      await registerServices();

      runApp(
        DevicePreview(
          // enabled: !kReleaseMode,
          enabled: false,
          builder: (context) => const MyApp(),
        ),
      );
    },
    (error, stackTrace) {
      // Error handling logic
      if (error is Error) {
        ErrorHandler.handleError(error);
      } else {
        ErrorHandler.handleUnexpected(error);
      }
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();
    FlutterNativeSplash.remove();
    return Obx(() {
      return ScreenUtilInit(
        designSize: !(GetPlatform.isMobile)
            ? const Size(1671, 1026)
            : const Size(432, 932),

        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          useInheritedMediaQuery: true,
          builder: DevicePreview.appBuilder,
          title: 'IjaraHub',
          initialRoute: AppRoutes.initial,
          getPages: AppRoutes.routes,

          fallbackLocale: LanguageLocalEnums.defaultLan.locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: appStateController.currentLocale.locale,

          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appStateController.isDarkTheme,
        ),
      );
    });
  }
}
