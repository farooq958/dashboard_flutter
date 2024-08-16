import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/assets.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';

class Topbar extends StatelessWidget {
  const Topbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // spacing: 10,
        // runSpacing: 10,
        children: [
          TopbarItem(
            leftSide: Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.lightblackColor,
                ),
                child: const Icon(
                  Icons.equalizer_rounded,
                  size: 30,
                  color: AppColors.purpleColor,
                )),
            centerWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                    text: 'Earnings',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 14, color: AppColors.lightColor1)),
                AppText(
                    text: '\$350.4',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkBlueColor)),
              ],
            ).symmetricPadding(horizontal: 20),
          ),
          TopbarItem(
            leftSide: Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.lightblackColor,
                ),
                child: const Icon(
                  Icons.attach_money,
                  size: 30,
                  color: AppColors.purpleColor,
                )),
            centerWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                    text: 'Earnings',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 14, color: AppColors.lightColor1)),
                AppText(
                    text: '\$350.4',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkBlueColor)),
              ],
            ).symmetricPadding(horizontal: 20),
          ),
          TopbarItem(
            centerWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                    text: 'Earnings',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 14, color: AppColors.lightColor1)),
                AppText(
                    text: '\$350.4',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkBlueColor)),
                Row(
                  children: [
                    AppText(
                        text: '+23%',
                        style: AppTextStyles.circularStdRegular(
                            fontSize: 14, color: AppColors.greenColor)),
                    AppText(
                        text: ' since last month',
                        style: AppTextStyles.circularStdRegular(
                            fontSize: 14, color: AppColors.lightColor1)),
                  ],
                )
              ],
            ).symmetricPadding(horizontal: 20),
          ),
          TopbarItem(
            centerWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                    text: 'Earnings',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 14, color: AppColors.lightColor1)),
                AppText(
                    text: '\$350.4',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkBlueColor)),
              ],
            ).symmetricPadding(horizontal: 20),
            rightSide: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(Assets.flag), fit: BoxFit.cover)),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: AppColors.lightColor1,
                ).customPadding(l: 6)
              ],
            ),
          ),
          TopbarItem(
            centerWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                    text: 'Earnings',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 14, color: AppColors.lightColor1)),
                AppText(
                    text: '\$350.4',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkBlueColor)),
              ],
            ).symmetricPadding(horizontal: 20),
            leftSide: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColors.blueColor,
                    AppColors.lightColor1,
                  ],
                ),
              ),
              child: const Icon(
                Icons.add_task_rounded,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          TopbarItem(
            centerWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                    text: 'Total Projects',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 14, color: AppColors.lightColor1)),
                AppText(
                    text: '2390',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkBlueColor)),
              ],
            ).symmetricPadding(horizontal: 20),
            leftSide: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.lightColor1),
              child: const Icon(
                Icons.file_copy,
                color: AppColors.purpleColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopbarItem extends StatelessWidget {
  const TopbarItem({
    super.key,
    this.leftSide,
    this.rightSide,
    required this.centerWidget,
  });
  final Widget? leftSide;
  final Widget? rightSide;
  final Widget centerWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.whiteColor),
      child: Row(children: [
        leftSide ?? Container(),
        Expanded(child: centerWidget),
        rightSide ?? Container()
      ]).symmetricPadding(horizontal: 20, vertical: 10),
    ).symmetricPadding(horizontal: 6);
  }
}
