import 'package:flutter/material.dart';
import 'package:ijarahub/core/constants/app_colors.dart';
import 'package:ijarahub/core/widgets/responsive_container.dart';
import 'package:ijarahub/core/widgets/responsive_text.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final Color selectedColor;
  final VoidCallback? onTap;

  const CustomCard({
    super.key,
    required this.title,
    required this.subTitle,
    this.selectedColor = AppColors.pColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ResponsiveContainer(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: selectedColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
           ResponsiveText(text: title, fontWeight: FontWeight.bold, fontSize: 20,),
            const SizedBox(height: 4),
            ResponsiveText(text: subTitle,),
          ],
        ),
      ),
    );
  }
}
