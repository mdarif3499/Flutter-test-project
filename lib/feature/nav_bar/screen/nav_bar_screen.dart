import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import '../controller/nav_bar_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import '../controller/nav_bar_controller.dart';

class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavBarController());
    final theme = Theme.of(context);

    return Scaffold(
      body: Obx(() => controller.screens[controller.currentIndex]),
      bottomNavigationBar: Obx(() {
        return Container(
          height: getHeight(100),
          decoration: BoxDecoration(
            color: theme.cardColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: theme.brightness == Brightness.light
                    ? Colors.black12
                    : Colors.black54,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(controller.labels.length, (index) {
              final isActive = controller.currentIndex == index;
              return GestureDetector(
                onTap: () => controller.changeIndex(index),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    isActive
                        ? controller.activeIcons[index]
                        : controller.inActiveIcons[index],
                    const SizedBox(height: 4),
                    Text(
                      controller.labels[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: isActive ? FontWeight.bold : FontWeight.w900,
                        color: isActive
                            ? Colors.blue
                            : (theme.brightness == Brightness.light ? Colors.black : Colors.white70),
                      ),
                    ),
                    SizedBox(height: getHeight(20)),
                  ],
                ),
              );
            }),
          ),
        );
      }),
    );
  }
}