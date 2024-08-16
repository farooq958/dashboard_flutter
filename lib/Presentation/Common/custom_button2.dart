import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';

class CustomButton2 extends StatelessWidget {
  const CustomButton2({
    super.key,
    required this.text,
    this.textColor,
    this.backgroundColor,
    this.leadingIcon,
    this.iconColor,
    this.size,
    this.isIconLeading,
    this.height,
    this.width,
    this.borderRadius,
    this.horizontalPadding,
    this.verticalPadding,
    this.style,
  });
  final String text;
  final Color? textColor;
  final Color? backgroundColor;

  final IconData? leadingIcon;
  final bool? isIconLeading;
  final Color? iconColor;
  final double? size;
  final double? height;
  final double? width;
  final BorderRadius? borderRadius;
  final double? horizontalPadding;
  final double? verticalPadding;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(7),
          color: backgroundColor ?? AppColors.lightblackColor),
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            (isIconLeading ?? true)
                ? Icon(leadingIcon ?? Icons.calendar_month_outlined,
                        size: size, color: iconColor ?? AppColors.lightColor1)
                    .customPadding(r: 10)
                : Container(),
            AppText(
              text: text,
              style: style ??
                  AppTextStyles.circularStdRegular(
                    fontSize: 12,
                    color: textColor ?? AppColors.lightColor1,
                  ),
            ),
            !(isIconLeading ?? true)
                ? Icon(leadingIcon ?? Icons.calendar_month_outlined,
                        size: size, color: iconColor ?? AppColors.lightColor1)
                    .customPadding(l: 10)
                : Container(),
          ],
        ).symmetricPadding(
            horizontal: horizontalPadding ?? 10,
            vertical: verticalPadding ?? 10),
      ),
    );
  }
}
