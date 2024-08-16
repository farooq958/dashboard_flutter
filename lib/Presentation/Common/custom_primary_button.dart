import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';

class PrimaryCustomButton extends StatelessWidget {
  const PrimaryCustomButton({
    super.key,
    required this.title,
    this.leftSideWidget,
    required this.ontap,
    this.height,
    this.width,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
  });

  final String title;
  final Widget? leftSideWidget;
  final VoidCallback ontap;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      clipBehavior: Clip.hardEdge,
      height: height ?? size.height * .06,
      width: width ?? size.width * .25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: backgroundColor ?? AppColors.lightblackColor,
      ),
      child: MaterialButton(
        onPressed: ontap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leftSideWidget ?? Container(),
            AppText(
              text: title,
              style: AppTextStyles.circularStdRegular(
                fontWeight: FontWeight.w500,
                fontSize: fontSize ?? 16,
                color: textColor ?? AppColors.darkBlueColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
