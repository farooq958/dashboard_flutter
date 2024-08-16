import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_icon_widget.dart';
import 'package:responsive_dashboard/Presentation/Common/leading_icon_with_text.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/primary_dashboard_heading.dart';

class ComplexTableWidget extends StatelessWidget {
  const ComplexTableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardItem(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const PrimaryDashboardHeadingWidget(
                      headingText: 'Complex Table', fontSize: 24)
                  .customPadding(t: 20, b: 10),
              const CustomIconWidget(iconData: Icons.more_horiz)
            ],
          ).customPadding(l: 20, r: 20, t: 20),
          Expanded(
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                DataTable(
                  dividerThickness: .0000000001,
                  columns: complexTableColumns
                      .map(
                        (e) => DataColumn(
                          label: AppText(
                            text: e,
                            style: AppTextStyles.circularStdRegular(
                              fontSize: 14,
                              color: AppColors.lightColor1,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  rows: List.generate(
                    10,
                    (index) => DataRow(
                      cells: [
                        DataCell(
                          AppText(
                            text: 'Horizon UI PRO',
                            style: AppTextStyles.circularStdMedium(
                              fontSize: 14,
                              color: AppColors.darkBlueColor,
                            ),
                          ),
                        ),
                        DataCell(
                          IconWithTextWidget(
                            iconData: Icons.check_circle,
                            iconColor: index > 2
                                ? AppColors.greenColor
                                : AppColors.redColor,
                            text: index > 2 ? 'Approved' : 'Disable',
                            fontSize: 14,
                            textColor: AppColors.darkBlueColor,
                            isLeading: true,
                          ),
                        ),
                        DataCell(
                          AppText(
                            text: '24.Jan.2021',
                            style: AppTextStyles.circularStdMedium(
                              fontSize: 14,
                              color: AppColors.darkBlueColor,
                            ),
                          ),
                        ),
                        DataCell(
                          LinearProgressIndicator(
                            minHeight: 6,
                            borderRadius: BorderRadius.circular(4),
                            value: index < 2 ? (index + 1) / 2 : index / 5,
                            color: AppColors.purpleColor,
                            backgroundColor: AppColors.lightblackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
