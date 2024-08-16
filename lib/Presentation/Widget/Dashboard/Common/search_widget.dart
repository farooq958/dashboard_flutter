import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    this.whichLayout,
  });
  final String? whichLayout;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: whichLayout == 'mobile' ? size.width * .7 + 24 : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.whiteColor,
      ),
      child: Row(
        children: [
          if (whichLayout == 'desktop')
            TextField(
              style: AppTextStyles.circularStdRegular(
                  fontSize: 14, color: AppColors.darkBlueColor),
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: AppTextStyles.circularStdRegular(
                      fontSize: 14, color: AppColors.lightColor1),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 13,
                    color: AppColors.lightColor1,
                  ).customPadding(l: 10),
                  fillColor: AppColors.lightblackColor,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(40)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: AppColors.purpleColor),
                      borderRadius: BorderRadius.circular(40)),
                  constraints: const BoxConstraints(
                      maxWidth: 200,
                      minWidth: 100,
                      maxHeight: 42,
                      minHeight: 30)),
            ),
          if (whichLayout != 'desktop')
            Expanded(
              child: TextField(
                style: AppTextStyles.circularStdRegular(
                    fontSize: 14, color: AppColors.darkBlueColor),
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: AppTextStyles.circularStdRegular(
                      fontSize: 14, color: AppColors.lightColor1),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 13,
                    color: AppColors.lightColor1,
                  ).customPadding(l: 10),
                  fillColor: AppColors.lightblackColor,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(40)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: AppColors.purpleColor),
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
          if (whichLayout == 'desktop')
            Row(
              children: [
                const Icon(
                  Icons.notifications_none,
                  color: AppColors.lightColor1,
                ).customPadding(l: 20),
                const Icon(
                  Icons.nightlight_round,
                  color: AppColors.lightColor1,
                ).customPadding(l: 20),
                const Icon(
                  Icons.notifications_none,
                  color: AppColors.lightColor1,
                ).customPadding(l: 20, r: 10)
              ],
            )
        ],
      ).symmetricPadding(horizontal: 10, vertical: 10),
    );
  }
}
