import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/assets.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';

class RightSide extends StatelessWidget {
  const RightSide({
    super.key,
    this.whichLayout,
  });

  final String? whichLayout;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    log((size.width * .01).toString());
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.lightblueColor, AppColors.blueColor],
          ),
          borderRadius: BorderRadius.only(
              bottomLeft:
                  Radius.circular(whichLayout == 'desktop' ? 200 : 100))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Image.asset(Assets.logo).symmetricPadding(
              horizontal: whichLayout == 'desktop' ? 100 : 50),
          if (whichLayout == 'desktop')
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                border: Border.all(
                  color: AppColors.lightColor1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppText(
                    maxLine: 2,
                    text: 'Learn more about Horizon UI on',
                    style: AppTextStyles.circularStdRegular(
                      fontSize: 16,
                      color: AppColors.lightColor1,
                    ),
                  ),
                  AppText(
                    maxLine: 2,
                    text: 'horizon-ui.com',
                    style: AppTextStyles.circularStdRegular(
                      fontSize: 30,
                      color: AppColors.whiteColor,
                    ),
                  )
                ],
              ).symmetricPadding(horizontal: 20, vertical: 20),
            ),
          if (whichLayout == 'desktop')
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: size.width * .35,
                // color: AppColors.blackColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * .25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'Marketplace',
                            style: AppTextStyles.circularStdMedium(
                                fontSize: (size.width * .01),
                                color: AppColors.whiteColor),
                          ),
                          AppText(
                            text: 'License',
                            style: AppTextStyles.circularStdMedium(
                                fontSize: (size.width * .01),
                                color: AppColors.whiteColor),
                          ),
                          AppText(
                            text: 'Terms of Use',
                            style: AppTextStyles.circularStdMedium(
                                fontSize: (size.width * .01),
                                color: AppColors.whiteColor),
                          ),
                          AppText(
                            text: 'Blog',
                            style: AppTextStyles.circularStdMedium(
                                fontSize: (size.width * .01),
                                color: AppColors.whiteColor),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.purpleColor),
                      height: 60,
                      width: 60,
                      child: const Center(
                          child: Icon(
                        Icons.nightlight_round,
                        size: 20,
                        color: AppColors.whiteColor,
                      )),
                    )
                  ],
                ),
              ),
            ).customPadding(b: 20, r: 20),
          if (whichLayout == 'tablet')
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: size.height * .3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: 'Marketplace',
                      style: AppTextStyles.circularStdMedium(
                          fontSize: (size.width * .01),
                          color: AppColors.whiteColor),
                    ),
                    AppText(
                      text: 'License',
                      style: AppTextStyles.circularStdMedium(
                          fontSize: (size.width * .01),
                          color: AppColors.whiteColor),
                    ),
                    AppText(
                      text: 'Terms of Use',
                      style: AppTextStyles.circularStdMedium(
                          fontSize: (size.width * .01),
                          color: AppColors.whiteColor),
                    ),
                    AppText(
                      text: 'Blog',
                      style: AppTextStyles.circularStdMedium(
                          fontSize: (size.width * .01),
                          color: AppColors.whiteColor),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.purpleColor),
                      height: 60,
                      width: 60,
                      child: const Center(
                          child: Icon(
                        Icons.nightlight_round,
                        size: 20,
                        color: AppColors.whiteColor,
                      )),
                    )
                  ],
                ),
              ),
            ).customPadding(b: 20, r: 20)
        ],
      ),
    );
  }
}
