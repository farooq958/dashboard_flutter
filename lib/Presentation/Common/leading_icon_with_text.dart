import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';

class IconWithTextWidget extends StatelessWidget {
  const IconWithTextWidget({
    super.key,
    required this.iconData,
    this.size,
    required this.iconColor,
    required this.text,
    this.fontSize,
    this.textColor,
    this.isLeading,
    this.textStyle,
  });
  final IconData iconData;
  final double? size;
  final Color iconColor;
  final String text;
  final double? fontSize;
  final Color? textColor;
  final bool? isLeading;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        (isLeading ?? false)
            ? Icon(iconData, color: iconColor, size: size).customPadding(r: 4)
            : Container(),
        AppText(
            text: text,
            style: textStyle ??
                AppTextStyles.circularStdMedium(
                    fontSize: fontSize,
                    color: textColor ?? AppColors.lightColor1)),
        !(isLeading ?? false)
            ? Icon(iconData, color: iconColor, size: size).customPadding(r: 4)
            : Container(),
      ],
    );
  }
}
