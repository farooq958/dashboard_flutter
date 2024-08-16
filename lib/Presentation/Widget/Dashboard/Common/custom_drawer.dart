// ignore_for_file: depend_on_referenced_packages, deprecated_member_use

import 'package:collection/collection.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/assets.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Controller/drawer_controller.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.customDrawerController,
  });

  final CustomDrawerController customDrawerController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: customDrawerController.index,
      builder: (context, value, child) => Drawer(
        shape: const RoundedRectangleBorder(),
        backgroundColor: AppColors.whiteColor,
        child: Column(
          children: [
            Image.asset(Assets.logo)
                .symmetricPadding(horizontal: 20, vertical: 40),
            const Divider(thickness: .5),
            const SizedBox(height: 50),
            ...customDrawerController.drawerData.mapIndexed(
              (index, element) => Container(
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                            width: 3,
                            color: value == index
                                ? AppColors.purpleColor
                                : Colors.transparent))),
                child: MaterialButton(
                  onPressed: () {
                    customDrawerController.index.value = index;
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        element.iconUrl,
                        color: value == index
                            ? AppColors.purpleColor
                            : AppColors.lightColor1,
                      ).customPadding(r: 12),
                      AppText(
                        text: element.title,
                        style: AppTextStyles.circularStdMedium(
                            fontSize: 16,
                            color: value == index
                                ? AppColors.darkBlueColor
                                : AppColors.lightColor1),
                      )
                    ],
                  ).symmetricPadding(vertical: 10, horizontal: 10),
                ),
              ).customPadding(t: 6, b: 6, l: 20),
            )
          ],
        ),
      ),
    );
  }
}
