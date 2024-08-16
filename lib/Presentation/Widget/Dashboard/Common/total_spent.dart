import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';

class TotalSpent extends StatelessWidget {
  const TotalSpent({
    super.key,
    required this.percentage,
  });
  final String percentage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppText(
            text: 'Total Spent ',
            style: AppTextStyles.circularStdRegular(
                fontSize: 14, color: AppColors.lightColor1)),
        AppText(
            text: percentage,
            style: AppTextStyles.circularStdRegular(
                fontSize: 14, color: AppColors.greenColor)),
      ],
    );
  }
}
