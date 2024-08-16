import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_bar_chart2.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_icon_widget.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/primary_dashboard_heading.dart';

class DailyTrafficWidget extends StatelessWidget {
  const DailyTrafficWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardItem(
      flex: 1,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  AppText(
                    text: 'Daily traffic',
                    style: AppTextStyles.circularStdRegular(
                      fontSize: 12,
                      color: AppColors.lightColor1,
                    ),
                  ),
                  const PrimaryDashboardHeadingWidget(
                      headingText: '2.567', fontSize: 24)
                ],
              ),
              const CustomIconWidget(iconData: Icons.equalizer_rounded)
            ],
          ),
          const Spacer(),
          CustomBarChart2(
            data: dailyTrafficData,
            maxYValue: maxValueOfColumnChart(),
            linearGradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.purpleColor, AppColors.lightblackColor]),
            relativeHeightFactore: 2,
          )
        ],
      ).symmetricPadding(horizontal: 20, vertical: 20),
    );
  }
}
