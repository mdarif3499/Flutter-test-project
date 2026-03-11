import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import 'package:najwa_brighach/core/const/icons_path.dart';
import 'package:najwa_brighach/core/global_widget/custom_appbar.dart';
import 'package:najwa_brighach/core/global_widget/custom_submit_button.dart';
import 'package:najwa_brighach/core/global_widget/custom_textfield.dart';
import 'package:najwa_brighach/core/utils/validators/app_validators.dart';
import 'package:najwa_brighach/feature/auth/controller/sign_in_controller.dart';

import '../../../core/const/app_colors.dart';
import '../../../core/global_widget/custom_text.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final controller = Get.put(SignInController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: ""),
      body: SafeArea(
        bottom: true,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: getWidth(24)),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: getHeight(37)),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            IconsPath.quran,
                            height: getHeight(128),
                            width: getWidth(128),
                          ),
                        ),
                        SizedBox(height: getHeight(20)),
                        CustomText(
                          text: "Welcome Back!",
                          color: AppColors.primaryTextColor,
                          fontSize: getWidth(30),
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(height: getHeight(8)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: CustomText(
                            textAlign: TextAlign.center,
                            text: "Please sign in to your account",
                            color: AppColors.textGrey2,
                            fontSize: getWidth(18),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: getHeight(24, maxHeight: 26)),

                  // Email Field
                  CustomTextfield(
                    controller: controller.emailController,
                    hintext: "Enter your email",
                    title: "Email Address",
                    validator: (value) => AppValidator.validateEmail(value),
                  ),

                  SizedBox(height: getHeight(20)),

                  // Password Field
                  Obx(() => CustomTextfield(
                    controller: controller.passController,
                    hintext: "Enter your password",
                    title: "Password",
                    obsecureText: controller.isPasswordHidden.value,
                    validator: (value) => AppValidator.validatePasswordLogin(value),
                    suffixIcon: GestureDetector(
                      onTap: controller.togglePasswordVisibility,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset(
                          controller.isPasswordHidden.value ? IconsPath.eye1 : IconsPath.eyeOn,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  )),

                  SizedBox(height: getHeight(16, maxHeight: 18)),

                  CustomSubmitButton(
                    text: "Continue",
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        controller.loginIn();
                      }
                    },
                    bgColor: AppColors.primaryColor,
                  ),

                  SizedBox(height: getHeight(24, maxHeight: 26)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}