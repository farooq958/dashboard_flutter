import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Presentation/Widget/Auth/LoginScreen/Common/left_side.dart';
import 'package:responsive_dashboard/Presentation/Widget/Auth/LoginScreen/Common/right_side.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
    this.whichLayout,
  });
  final String? whichLayout;

  /// mobile,desktop,tablet

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: whichLayout == 'desktop'
            ? Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Leftside(
                        whichLayout: whichLayout,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: RightSide(whichLayout: whichLayout),
                  ),
                ],
              )
            : whichLayout == 'mobile'
                ? Center(
                    child: Leftside(
                      whichLayout: whichLayout,
                    ),
                  )
                : Row(
                    children: [
                      Expanded(
                        flex: 14,
                        child: Center(
                          child: Leftside(
                            whichLayout: whichLayout,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: RightSide(whichLayout: whichLayout),
                      ),
                    ],
                  ));
  }
}
