import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({super.key, this.whichLayout, this.flex, this.child});
  final String? whichLayout;
  final int? flex;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex ?? 1,
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 390,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.whiteColor),
        child: child,
      ),
    );
  }
}
