import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_bar_chart1.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/primary_dashboard_heading.dart';

class VerticalBarChartWidget extends StatelessWidget {
  const VerticalBarChartWidget({
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
              const PrimaryDashboardHeadingWidget(
                      headingText: 'Weekly Revenue', fontSize: 24)
                  .customPadding(t: 20, b: 10),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.lightblackColor,
                ),
                child: const Icon(
                  Icons.equalizer_rounded,
                  size: 20,
                  color: AppColors.purpleColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          CustomBarChart1(
            data: columnBarChartData,
            maxYValue: maxValueOfColumnChart(),
            barColor: AppColors.lightblackColor,
            secondOverlayColor: AppColors.purle2,
            firstOverlayColor: AppColors.blue2,
            relativeHeightFactore: 2,
          )
        ],
      ).symmetricPadding(horizontal: 20, vertical: 20),
    );
  }
}
