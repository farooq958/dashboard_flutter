import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_primary_button.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';

class ControlCardWidget extends StatelessWidget {
  const ControlCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DashboardItem(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.fingerprint, color: AppColors.purpleColor, size: 80)
              .customPadding(t: 20),
          AppText(
            maxLine: 3,
            text: 'Control card security in-app with a tap',
            style: AppTextStyles.circularStdMedium(
                fontSize: 20, color: AppColors.darkBlueColor),
          ).symmetricPadding(vertical: 16),
          AppText(
            maxLine: 2,
            text: 'Discover our cards benefits, with one tap.',
            style: AppTextStyles.circularStdRegular(
                fontSize: 14, color: AppColors.lightColor1),
          ),
          const Spacer(),
          PrimaryCustomButton(
            title: 'Cards',
            ontap: () {},
            height: 46,
            backgroundColor: AppColors.purpleColor,
            textColor: AppColors.whiteColor,
          )
        ],
      ).symmetricPadding(horizontal: 20, vertical: 20),
    );
  }
}
