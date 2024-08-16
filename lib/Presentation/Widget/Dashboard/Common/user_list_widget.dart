import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_icon_widget.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/dashboard_item.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/Common/primary_dashboard_heading.dart';

class UserListWidget extends StatefulWidget {
  const UserListWidget({
    super.key,
  });

  @override
  State<UserListWidget> createState() => _UserListWidgetState();
}

class _UserListWidgetState extends State<UserListWidget> {
  @override
  Widget build(BuildContext context) {



    return DashboardItem(
      flex: 1,
      child: Column(
        children: [
          const Row(
            children: [
              PrimaryDashboardHeadingWidget(
                  headingText: 'Team members', fontSize: 20),
              Spacer(),
              CustomIconWidget(iconData: Icons.add_circle_rounded),
            ],
          ).symmetricPadding(horizontal: 20, vertical: 20),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: userData
                  .map(
                    (e) => Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          boxShadow: const [
                            BoxShadow(
                                color: AppColors.lightColor2,
                                blurRadius: 20,
                                spreadRadius: 3,
                                offset: Offset(0, 10))
                          ],
                          borderRadius: BorderRadius.circular(16)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(e.imageUrl),
                                  fit: BoxFit.cover),
                            ),
                          ).customPadding(r: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppText(
                                text: e.name,
                                style: AppTextStyles.circularStdMedium(
                                    fontSize: 16,
                                    color: AppColors.darkBlueColor),
                              ),
                              AppText(
                                text: e.designation,
                                style: AppTextStyles.circularStdRegular(
                                    fontSize: 12, color: AppColors.lightColor1),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_vert,
                            size: 20,
                            color: AppColors.lightColor1,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
