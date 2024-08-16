import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Domain/Models/line_chart_models.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_button2.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_icon_widget.dart';
import 'package:responsive_dashboard/Presentation/Common/leading_icon_with_text.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/primary_dashboard_heading.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/total_spent.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
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
              CustomButton2(text: 'This month'),
              CustomIconWidget(iconData: Icons.equalizer_rounded)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PrimaryDashboardHeadingWidget(
                    headingText: '\$37.5K',
                    fontSize: 34,
                  ).customPadding(t: 20, b: 10),
                  const TotalSpent(
                    percentage: '+2.45%',
                  ),
                  const IconWithTextWidget(
                    iconData: Icons.check_circle,
                    iconColor: AppColors.greenColor,
                    text: 'On Track',
                    fontSize: 16,
                    textColor: AppColors.greenColor,
                  ).customPadding(t: 10)
                ],
              ),
              Expanded(
                child: SfCartesianChart(
                  margin: const EdgeInsets.all(0),
                  plotAreaBorderWidth: 0,
                  primaryXAxis: const CategoryAxis(isVisible: false),
                  primaryYAxis: const NumericAxis(isVisible: false),
                  series: [
                    SplineSeries<LineChartModel, String>(
                      color: AppColors.purpleColor,
                      width: 4,
                      dataSource: linechartData,
                      xValueMapper: (LineChartModel sales, _) => sales.x,
                      yValueMapper: (LineChartModel sales, _) => sales.y,
                      markerSettings: const MarkerSettings(isVisible: false),
                    ),
                    SplineSeries<LineChartModel, String>(
                      width: 4,
                      color: AppColors.blueColor,
                      dataSource: linechartData,
                      name: 'Low',
                      markerSettings: const MarkerSettings(isVisible: false),
                      xValueMapper: (LineChartModel sales, _) => sales.x,
                      yValueMapper: (LineChartModel sales, _) =>
                          sales.secondSeriesYValue,
                    )
                  ],
                  tooltipBehavior: TooltipBehavior(enable: true),
                ),
              ),
            ],
          )
        ],
      ).symmetricPadding(horizontal: 20, vertical: 20),
    );
  }
}
