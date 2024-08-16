import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/assets.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_primary_button.dart';
import 'package:responsive_dashboard/Presentation/Common/custom_textfield.dart';

class Leftside extends StatelessWidget {
  const Leftside({
    super.key,
    this.whichLayout,
  });
  final String? whichLayout;

  @override
  Widget build(BuildContext context) {
    log(whichLayout.toString());
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: (size.width > 1400)
          ? size.width * .2
          : whichLayout == 'mobile'
              ? size.width - 100
              : size.width * .5 - 100,
      child: ListView(
        shrinkWrap: true,
        children: [
          if (whichLayout == 'mobile')
            Image.asset(Assets.logo)
                .symmetricPadding(horizontal: 50, vertical: 20),
          AppText(
            text: 'Login',
            style: AppTextStyles.circularStdBold(
                fontWeight: FontWeight.w700,
                fontSize: 36,
                color: AppColors.darkBlueColor),
          ),
          AppText(
            maxLine: 3,
            text: 'Enter your email and password to sign in!',
            style: AppTextStyles.circularStdRegular(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.lightColor1),
          ).customPadding(t: 8, b: 36),
          PrimaryCustomButton(
            width: size.width * .5 - 100,
            title: 'Sign in with Google',
            fontSize: 14,
            ontap: () {},
            leftSideWidget:
                SvgPicture.asset(Assets.googleLogo).customPadding(r: 10),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              const Divider(color: AppColors.lightblackColor),
              Container(
                width: 40,
                // height: 40,
                color: AppColors.whiteColor,
                child: Center(
                  child: AppText(
                    text: 'or',
                    style: AppTextStyles.circularStdRegular(
                        fontSize: 14, color: AppColors.lightColor1),
                  ),
                ),
              )
            ],
          ).customPadding(t: 26, b: 26),
          AppText(
            text: 'Email*',
            style: AppTextStyles.circularStdBold(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.darkBlueColor,
            ),
          ),
          const CustomTextfield(
            hinttext: 'mail@simmmple.com',
            fontSize: 14,
          ).customPadding(b: 24),
          AppText(
            text: 'Password*',
            style: AppTextStyles.circularStdBold(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.darkBlueColor,
            ),
          ),
          CustomTextfield(
              hinttext: 'Min. 8 characters',
              fontSize: 14,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.visibility_outlined,
                  size: 18,
                  color: AppColors.lightColor1,
                ),
              )).customPadding(b: 24),
          if (whichLayout != 'tablet')
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.check_box, color: AppColors.purpleColor),
                AppText(
                  text: 'Keep me logged in',
                  style: AppTextStyles.circularStdMedium(
                    fontSize: 14,
                    color: AppColors.darkBlueColor,
                  ),
                ),
                const Spacer(),
                AppText(
                  text: 'Forgot password?',
                  style: AppTextStyles.circularStdMedium(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.purpleColor,
                  ),
                )
              ],
            ),
          if (whichLayout == 'tablet')
            Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: AppText(
                    text: 'Forgot password?',
                    style: AppTextStyles.circularStdMedium(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.purpleColor,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.check_box, color: AppColors.purpleColor),
                    AppText(
                      text: 'Keep me logged in',
                      style: AppTextStyles.circularStdMedium(
                        fontSize: 14,
                        color: AppColors.darkBlueColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          PrimaryCustomButton(
            width: size.width * .5 - 100,
            title: 'Sign In',
            fontSize: 14,
            ontap: () {},
            backgroundColor: AppColors.purpleColor,
            textColor: AppColors.whiteColor,
          ).symmetricPadding(vertical: 50),
          if (whichLayout != 'tablet')
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppText(
                  text: 'Not Registered yet?',
                  style: AppTextStyles.circularStdMedium(
                    fontSize: 14,
                    color: AppColors.darkBlueColor,
                  ),
                ).customPadding(r: 4),
                AppText(
                  text: 'Create an account',
                  style: AppTextStyles.circularStdMedium(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.purpleColor,
                  ),
                )
              ],
            ),
          if (whichLayout == 'tablet')
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppText(
                  text: 'Not Registered yet?',
                  style: AppTextStyles.circularStdMedium(
                    fontSize: 14,
                    color: AppColors.darkBlueColor,
                  ),
                ).customPadding(b: 4),
                AppText(
                  text: 'Create an account',
                  style: AppTextStyles.circularStdMedium(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.purpleColor,
                  ),
                )
              ],
            ),
        ],
      ),
    );
  }
}
