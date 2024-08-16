import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Domain/Models/column_barchart_model.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';

class CustomBarChart2 extends StatefulWidget {
  const CustomBarChart2({
    super.key,
    required this.data,
    required this.maxYValue,
    required this.linearGradient,
    this.borderRadius,
    required this.relativeHeightFactore,
  });
  final List<ColumnBarChatModel> data;
  final double maxYValue;
  final LinearGradient linearGradient;
  final BorderRadius? borderRadius;
  final double relativeHeightFactore;

  @override
  State<CustomBarChart2> createState() => _CustomBarChart2State();
}

class _CustomBarChart2State extends State<CustomBarChart2> {
  double height = 0;
  @override
  void initState() {
    super.initState();
    updateHeigth();
  }

  updateHeigth() async {
    await Future.delayed(const Duration(milliseconds: 300));
    height = widget.relativeHeightFactore;

    if(mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: widget.data.map((e) {
            return AnimatedContainer(
              height: (e.y / widget.maxYValue * 100) * height,
              width: 30,
              decoration: BoxDecoration(
                gradient: widget.linearGradient,
                borderRadius: widget.borderRadius ??
                    const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
              ),
              duration: const Duration(seconds: 1),
            );
          }).toList(),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: dailyTrafficData.map((e) {
            return SizedBox(
              width: 30,
              child: Center(
                child: AppText(
                  text: e.y.toStringAsFixed(0),
                  style: AppTextStyles.circularStdRegular(
                      fontSize: 10, color: AppColors.darkBlueColor),
                ),
              ),
            );
          }).toList(),
        ).customPadding(t: 10)
      ],
    );
  }
}
