import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';

class PrimaryDashboardHeadingWidget extends StatelessWidget {
  const PrimaryDashboardHeadingWidget({
    super.key,
    required this.headingText,
    required this.fontSize,
  });
  final String headingText;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return AppText(
      text: headingText,
      style: AppTextStyles.circularStdRegular(
          fontSize: fontSize,
          fontWeight: FontWeight.w700,
          color: AppColors.darkBlueColor),
    );
  }
}
