import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Domain/Models/pie_chart_model.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Common/leading_icon_with_text.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/primary_dashboard_heading.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardItem(
      flex: 1,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryDashboardHeadingWidget(
                  headingText: 'Your Pie Chart', fontSize: 16),
              IconWithTextWidget(
                  iconData: Icons.keyboard_arrow_down_rounded,
                  iconColor: AppColors.lightColor1,
                  text: 'Monthly',
                  fontSize: 12,
                  textColor: AppColors.lightColor1,
                  isLeading: false)
            ],
          ),
          Expanded(
            child: SfCircularChart(series: <CircularSeries>[
              // Render pie chart
              PieSeries<PieChartModel, String>(
                  dataSource: pieChartData,
                  pointColorMapper: (PieChartModel data, _) => data.color,
                  xValueMapper: (PieChartModel data, _) => data.x,
                  yValueMapper: (PieChartModel data, _) => data.y)
            ]),
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                      color: AppColors.lightColor1)
                ],
                color: AppColors.whiteColor),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconWithTextWidget(
                        iconData: Icons.circle,
                        iconColor: AppColors.purpleColor,
                        size: 16,
                        text: 'Your Files',
                        textStyle: AppTextStyles.circularStdRegular(
                            fontSize: 12, color: AppColors.lightColor1),
                        isLeading: true,
                      ),
                      AppText(
                          text: '63%',
                          style: AppTextStyles.circularStdMedium(
                              fontSize: 18, color: AppColors.darkBlueColor)),
                    ],
                  ),
                ),
                const VerticalDivider(thickness: 0.2),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconWithTextWidget(
                      iconData: Icons.circle,
                      iconColor: AppColors.lightblueColor,
                      size: 16,
                      text: 'System',
                      textStyle: AppTextStyles.circularStdRegular(
                          fontSize: 12, color: AppColors.lightColor1),
                      isLeading: true,
                    ),
                    AppText(
                        text: '23%',
                        style: AppTextStyles.circularStdMedium(
                            fontSize: 18, color: AppColors.darkBlueColor)),
                  ],
                )),
              ],
            ),
          )
        ],
      ).symmetricPadding(horizontal: 20, vertical: 20),
    );
  }
}
