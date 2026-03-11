import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_palette.dart';
import '../../../../core/controllers/app_state_controller.dart';
import '../../../../core/enums/user_roles_enum.dart';
import '../../../../core/widgets/loader.dart';
import '../../../../l10n/app_localizations.dart';
import '../../controllers/auth_controller.dart';
import '../widgets/auth_common_app_bar.dart';

class AuthUserRoleSelectorScreen extends StatefulWidget {
  const AuthUserRoleSelectorScreen({super.key});

  @override
  State<AuthUserRoleSelectorScreen> createState() =>
      _AuthUserRoleSelectorScreenState();
}

class _AuthUserRoleSelectorScreenState
    extends State<AuthUserRoleSelectorScreen> {
  UserRolesEnum? _selectedRole;

  void _signOut() {
    final appStateController = Get.find<AppStateController>();
    appStateController.logout();
  }

  void _onRoleSelected(UserRolesEnum role) {
    setState(() {
      _selectedRole = role;
    });
  }

  void _onContinue(BuildContext context) {
    if (_selectedRole != null) {
      // Handle continue action with selected role
      final authController = Get.find<AuthController>();
      authController.setUserRoleInLocal(
        context: context,
        selectedUserRole: _selectedRole!,
      );
      // Navigate to next screen
    }
  }

  @override
  Widget build(BuildContext context) {
    final appStateController = Get.find<AppStateController>();
    final appLocalizations = AppLocalizations.of(context)!;
    final authController = Get.find<AuthController>();
    return Obx(() {
      bool isDark = appStateController.isDarkMode;
      bool isLoading = authController.isLoading.value;

      return Loader(
        isLoading: isLoading,
        child: Scaffold(
          backgroundColor: isDark ? Colors.black : Colors.white,
          appBar: AuthCommonAppBar(
            showBackButton: false,
            languageSelection: true,
            leading: _signOutBtnWidget(
              isDark: isDark,
              appLocalizations: appLocalizations,
            ),
            leadingWidth: 100.w,
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(height: 32.h),
                  _buildTitle(isDark, appLocalizations),
                  SizedBox(height: 40.h),
                  _buildRoleGrid(isDark),
                  const Spacer(),
                  _buildContinueButton(appLocalizations),
                  SizedBox(height: 32.h),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget _buildTitle(bool isDark, AppLocalizations appLocalizations) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          appLocalizations.authRoleSelectorTitle,
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
            color: isDark ? Colors.white : const Color(0xFF2C2C2C),
          ),
        ),
        SizedBox(width: 8.w),
        Text('👍', style: TextStyle(fontSize: 22.sp)),
      ],
    );
  }

  Widget _buildRoleGrid(bool isDark) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 20.w,
      mainAxisSpacing: 20.h,
      childAspectRatio: 0.95,
      children: [
        _buildRoleCard(
          role: UserRolesEnum.landLord,

          icon: Icons.home_outlined,
          isDark: isDark,
        ),
        _buildRoleCard(
          role: UserRolesEnum.propertyManager,

          icon: Icons.assignment_outlined,
          isDark: isDark,
        ),
        _buildRoleCard(
          role: UserRolesEnum.maintancePerson,

          icon: Icons.build_outlined,
          isDark: isDark,
        ),
        _buildRoleCard(
          role: UserRolesEnum.tenant,

          icon: Icons.people_outline,
          isDark: isDark,
        ),
      ],
    );
  }

  Widget _buildRoleCard({
    required UserRolesEnum role,

    required IconData icon,
    required bool isDark,
  }) {
    final isSelected = _selectedRole == role;

    return GestureDetector(
      onTap: () => _onRoleSelected(role),
      child: Container(
        decoration: BoxDecoration(
          color: isSelected
              ? AppPalette.getDynamicBackgroundColor()
              : AppPalette.getDynamicCardColor(),
          border: Border.all(
            color: isSelected
                ? AppPalette.getDynamicPrimaryColor()
                : AppPalette.getDynamicBorderColor(),
            width: isSelected ? 2.5 : 1.5,
          ),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 72.w,
              height: 72.w,
              decoration: BoxDecoration(
                color: AppPalette.getDynamicPrimaryColor(),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 36.sp, color: Colors.white),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                role.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: isSelected
                      ? AppPalette.getDynamicPrimaryColor()
                      : (isDark
                            ? const Color(0xFFB0B0B0)
                            : const Color(0xFF757575)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContinueButton(AppLocalizations appLocalizations) {
    return SizedBox(
      width: double.infinity,
      height: 52.h,
      child: ElevatedButton(
        onPressed: _selectedRole != null ? () => _onContinue(context) : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPalette.getDynamicPrimaryColor(),
          disabledBackgroundColor: AppPalette.getDynamicOffColor(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
          elevation: 0,
        ),
        child: Text(
          appLocalizations.commonContinueButton,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _signOutBtnWidget({
    required bool isDark,
    required AppLocalizations appLocalizations,
  }) {
    return TextButton(
      onPressed: _signOut,
      child: Text(
        appLocalizations.commonSignOut,
        style: TextStyle(color: AppPalette.LINK_COLOR),
      ),
    );
  }
}
