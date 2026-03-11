import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:najwa_brighach/core/const/icons_path.dart';

import '../../post_flow/screen/posts_screen.dart';
import '../../productflow/screen/product_screen.dart';
import '../../setting_flow/screen/setting_screen.dart';



class NavBarController extends GetxController {
  final selectedIndex = 0.obs;

  int get currentIndex => selectedIndex.value;

  void changeIndex(int index) {
    if (index >= 0 && index < screens.length) {
      selectedIndex.value = index;
    }
  }

  final List<Widget> screens = [
    const ProductsScreen(), // ProductsScreen(),
    const PostsScreen(),    // PostsScreen(),
    const SettingsScreen(), // SettingsScreen(),
  ];

  final List<String> labels = const [
    'Products',
    'Posts',
    'Settings',
  ];

  final List<Image> activeIcons = [
    Image.asset(IconsPath.learnA, height: 30, width: 30), // Products Active
    Image.asset(IconsPath.reviewA, height: 30, width: 30), // Posts Active
    Image.asset(IconsPath.meA, height: 30, width: 30),     // Settings Active
  ];

  final List<Image> inActiveIcons = [
    Image.asset(IconsPath.learn, height: 30, width: 30),
    Image.asset(IconsPath.review, height: 30, width: 30),
    Image.asset(IconsPath.profile1, height: 30, width: 30),
  ];
}