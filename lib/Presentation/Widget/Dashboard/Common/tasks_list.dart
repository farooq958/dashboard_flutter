import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_icon_widget.dart';
import 'package:responsive_dashboard/Presentation/Common/leading_icon_with_text.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';

class TaskListWidget extends StatefulWidget {
  const TaskListWidget({
    super.key,
  });

  @override
  State<TaskListWidget> createState() => _TaskListWidgetState();
}

class _TaskListWidgetState extends State<TaskListWidget> {
  @override
  Widget build(BuildContext context) {
    return DashboardItem(
      flex: 1,
      child: Column(
        children: [
          Row(
            children: [
              IconWithTextWidget(
                isLeading: true,
                iconData: Icons.check_box,
                iconColor: AppColors.purpleColor,
                text: 'Tasks',
                textStyle: AppTextStyles.circularStdRegular(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: AppColors.darkBlueColor),
              ),
              const Spacer(),
              const CustomIconWidget(iconData: Icons.more_horiz)
            ],
          ).symmetricPadding(horizontal: 20, vertical: 20),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const NeverScrollableScrollPhysics(),
              children: tasks
                  .map(
                    (e) => ListTile(
                      trailing: const Icon(
                        Icons.drag_indicator,
                        size: 20,
                        color: AppColors.lightColor1,
                      ),
                      contentPadding: const EdgeInsets.all(0),
                      leading: e.isDone
                          ? const Icon(Icons.check_box_outline_blank,
                                  color: AppColors.lightColor1)
                              .customPadding(r: 10)
                          : const Icon(Icons.check_box,
                                  color: AppColors.purpleColor)
                              .customPadding(r: 10),
                      title: AppText(
                        text: e.title,
                        style: AppTextStyles.circularStdRegular(
                            fontSize: 16,
                            color: e.isDone
                                ? AppColors.lightColor1
                                : AppColors.darkBlueColor),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
