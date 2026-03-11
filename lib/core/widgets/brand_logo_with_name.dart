import 'package:flutter/material.dart';
import '../constants/app_palette.dart';
import '../constants/assets_const.dart';

class BrandLogoWithName extends StatelessWidget {
  final bool isDark;
  const BrandLogoWithName({super.key, this.isDark = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Image.asset(
            AssetsConst.IJARAHUB_LOGO_600x600_PNG,
            color: isDark ? AppPalette.DARK_PRIMARY_COLOR : null,
          ),
        ),

        FittedBox(
          child: Image.asset(
            AssetsConst.IJARAHUB_BRANDNAME_600x240_PNG,
            color: isDark ? AppPalette.DARK_PRIMARY_COLOR : null,
          ),
        ),
      ],
    );
  }
}
