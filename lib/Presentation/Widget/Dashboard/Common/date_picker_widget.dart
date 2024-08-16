import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_button2.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardItem(
      flex: 1,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              lastMonthIcon: Container(),
              nextMonthIcon: Container(),
              controlsTextStyle:
                  const TextStyle(color: Colors.transparent, fontSize: 0),
              calendarType: CalendarDatePicker2Type.range,
            ),
            value: [
              DateTime.now().subtract(const Duration(days: 5)),
              DateTime.now()
            ],
            // onValueChanged: (dates) => _dates = dates,
          ).customPadding(t: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton2(
                text: 'April',
                backgroundColor: AppColors.lightblackColor,
                leadingIcon: Icons.keyboard_arrow_down_rounded,
                isIconLeading: false,
                iconColor: AppColors.purpleColor,
                style: AppTextStyles.circularStdMedium(
                    fontSize: 14, color: AppColors.purpleColor),
                height: 45,
                borderRadius: BorderRadius.circular(40),
                horizontalPadding: 20,
              ).customPadding(r: 30),
              CustomButton2(
                text: '2022',
                backgroundColor: Colors.transparent,
                leadingIcon: Icons.keyboard_arrow_down_rounded,
                isIconLeading: false,
                iconColor: AppColors.darkBlueColor,
                style: AppTextStyles.circularStdRegular(
                    fontSize: 14, color: AppColors.darkBlueColor),
                height: 45,
                borderRadius: BorderRadius.circular(40),
                horizontalPadding: 20,
              ),
            ],
          ).customPadding(t: 20),
        ],
      ),
    );
  }
}
