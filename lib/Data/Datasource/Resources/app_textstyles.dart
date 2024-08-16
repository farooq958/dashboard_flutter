import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';

class AppTextStyles {
  static TextStyle circularStdBold({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w600,
        color: color ?? AppColors.blackColor,
        fontFamily: "circularStd Bold",
      );
  static TextStyle circularStdRegular({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? AppColors.blackColor,
        fontFamily: "circularStd Regular",
      );
  static TextStyle circularStdMedium({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    double? letterSpacing,
  }) =>
      TextStyle(
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? AppColors.blackColor,
        fontFamily: "circularStd Medium",
      );
}
