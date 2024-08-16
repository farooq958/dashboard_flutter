import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/assets.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';

class StarbucksWidget extends StatelessWidget {
  const StarbucksWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardItem(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 210,
            child: Stack(
              children: [
                Container(
                  height: 185,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        Assets.starbucksBackground,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          Assets.starbucks,
                        ),
                      ),
                    ),
                  ),
                ).customPadding(l: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          AppColors.lightgreen,
                          AppColors.darkGreen,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.access_time,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ).customPadding(t: 14, r: 14)
              ],
            ),
          ).customPadding(b: 12),
          AppText(
            text: 'Starbucks',
            style: AppTextStyles.circularStdMedium(
                fontSize: 24, color: AppColors.darkBlueColor),
          ).customPadding(b: 12),
          Row(
            children: [
              SvgPicture.asset(Assets.burger).customPadding(r: 8),
              AppText(
                text: '10% cashback & off',
                style: AppTextStyles.circularStdRegular(
                    fontSize: 18, color: AppColors.lightColor1),
              ),
            ],
          ).customPadding(b: 20)
        ],
      ).symmetricPadding(horizontal: 20, vertical: 20),
    );
  }
}
