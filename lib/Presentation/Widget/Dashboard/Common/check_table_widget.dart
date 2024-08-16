import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_icon_widget.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/primary_dashboard_heading.dart';

class CheckTableWidget extends StatelessWidget {
  const CheckTableWidget({
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
                headingText: 'Check Table',
                fontSize: 24,
              ).customPadding(t: 20, b: 10),
              const CustomIconWidget(iconData: Icons.more_horiz)
            ],
          ).customPadding(l: 20, r: 20, t: 20),
          Expanded(
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                DataTable(
                  dividerThickness: .0000000001,
                  columns: checkTableColumns
                      .map((e) => DataColumn(
                            label: AppText(
                              text: e,
                              style: AppTextStyles.circularStdRegular(
                                fontSize: 14,
                                color: AppColors.lightColor1,
                              ),
                            ),
                          ))
                      .toList(),
                  rows: List.generate(
                    4,
                    (index) => DataRow(
                      cells: [
                        DataCell(
                          Row(
                            children: [
                              index > 2
                                  ? const Icon(Icons.check_box,
                                          color: AppColors.purpleColor)
                                      .customPadding(r: 5)
                                  : const Icon(
                                          Icons
                                              .check_box_outline_blank_outlined,
                                          color: AppColors.lightColor1)
                                      .customPadding(r: 5),
                              AppText(
                                text: 'Horizon UI PRO',
                                style: AppTextStyles.circularStdMedium(
                                  fontSize: 14,
                                  color: AppColors.darkBlueColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        DataCell(
                          AppText(
                            text: '${17.5 + index}%',
                            style: AppTextStyles.circularStdMedium(
                              fontSize: 14,
                              color: AppColors.darkBlueColor,
                            ),
                          ),
                        ),
                        DataCell(
                          AppText(
                            text: '${1.5 + index}',
                            style: AppTextStyles.circularStdMedium(
                              fontSize: 14,
                              color: AppColors.darkBlueColor,
                            ),
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
