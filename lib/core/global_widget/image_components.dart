import 'dart:io';
import 'package:najwa_brighach/core/const/app_colors.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import 'package:najwa_brighach/core/const/icons_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImageComponents extends StatelessWidget {
  const ImageComponents({super.key, required this.controller});

  final dynamic controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Obx(() {
        ImageProvider imageProvider;

        String imagePath = controller.selectedImagePath.value;

        if (imagePath.isEmpty) {
          imageProvider = AssetImage(IconsPath.home);
        } else if (imagePath.startsWith('http')) {
          imageProvider = NetworkImage(imagePath);
        } else {
          imageProvider = FileImage(File(imagePath));
        }

        return Stack(
          children: [
            Container(
              height: getWidth(120),
              width: getWidth(120),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // border: Border.all(color: AppColors.primaryColor, width: 2),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 7,
              child: GestureDetector(
                onTap: () {
                  controller.pickCamera();
                },
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: getWidth(24),
                  width: getWidth(24),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    border: Border.all(color: AppColors.white, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(IconsPath.home, color: AppColors.white),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
