import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_icon_widget.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_primary_button.dart';
import 'package:responsive_dashboard/Presentation/Common/leading_icon_with_text.dart';
import 'package:responsive_dashboard/Presentation/Common/stacked_image_list_widget.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';

class BusinessDesignWidget extends StatelessWidget {
  const BusinessDesignWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardItem(
      flex: 1,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomIconWidget(
                iconData: Icons.whatshot_rounded,
                color: AppColors.redColor,
                backgroundColor: AppColors.lightredColor,
                height: 48,
                width: 48,
                iconSize: 28,
              ).customPadding(r: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: 'Business Design',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.lightColor1),
                  ),
                  AppText(
                    text: 'New lession is available',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkBlueColor),
                  ),
                ],
              )
            ],
          ).customPadding(l: 20, r: 20, t: 20, b: 50),
          AppText(
            maxLine: 3,
            text: 'What do you need to know to create better products?',
            style: AppTextStyles.circularStdRegular(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.darkBlueColor),
          ).symmetricPadding(horizontal: 20),
          const Spacer(),
          Container(
            height: 160,
            color: AppColors.lightColor3,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconWithTextWidget(
                      isLeading: true,
                      iconData: Icons.timer_outlined,
                      iconColor: AppColors.greenColor,
                      text: '85 mins',
                      textStyle: AppTextStyles.circularStdRegular(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.darkBlueColor),
                    ),
                    const Spacer(),
                    IconWithTextWidget(
                      isLeading: true,
                      iconData: Icons.play_circle_outline_rounded,
                      iconColor: AppColors.redColor,
                      text: 'Video format',
                      textStyle: AppTextStyles.circularStdRegular(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.darkBlueColor),
                    ),
                  ],
                ).customPadding(r: 70, t: 20, l: 20),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    StackedImageList(
                        imageUrls: userData.map((e) => e.imageUrl).toList(),
                        limitTo: 4),
                    PrimaryCustomButton(
                        height: 40,
                        backgroundColor: AppColors.purpleColor,
                        textColor: AppColors.whiteColor,
                        width: 120,
                        title: 'Get Started',
                        ontap: () {})
                  ],
                ).customPadding(b: 20, l: 20, r: 20)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
