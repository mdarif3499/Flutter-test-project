import 'package:get/get.dart';

import '../../post_flow/controller/posts_controller.dart';
import '../../productflow/controller/product_controller.dart';
import '../../setting_flow/controller/setting_screen.dart';
import '../controller/nav_bar_controller.dart';

class NavBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavBarController());
    Get.lazyPut(() => ProductController());
    Get.lazyPut(() => PostController());
    Get.lazyPut(() => SettingsController());
  }
}