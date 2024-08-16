import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';

class CustomIconWidget extends StatelessWidget {
  const CustomIconWidget({
    super.key,
    required this.iconData,
    this.color,
    this.backgroundColor,
    this.height,
    this.width,
    this.iconSize,
  });
  final IconData iconData;
  final Color? color;
  final Color? backgroundColor;
  final double? height;
  final double? width;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 30,
      width: width ?? 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor ?? AppColors.lightblackColor,
      ),
      child: Icon(
        iconData,
        size: iconSize ?? 20,
        color: color ?? AppColors.purpleColor,
      ),
    );
  }
}
