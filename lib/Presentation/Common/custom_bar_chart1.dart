import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/AppData/dummy_data.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Domain/Models/column_barchart_model.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';

class CustomBarChart1 extends StatefulWidget {
  const CustomBarChart1({
    super.key,
    required this.data,
    required this.maxYValue,
    required this.barColor,
    this.firstOverlayColor,
    this.secondOverlayColor,
    this.borderRadius,
    required this.relativeHeightFactore,
  });
  final List<ColumnBarChatModel> data;
  final double maxYValue;
  final Color barColor;
  final Color? firstOverlayColor;
  final Color? secondOverlayColor;
  final BorderRadius? borderRadius;
  final double relativeHeightFactore;

  @override
  State<CustomBarChart1> createState() => _CustomBarChart1State();
}

class _CustomBarChart1State extends State<CustomBarChart1> {
  double height = 0;
  @override
  void initState() {
    super.initState();
    updateHeigth();
  }

  updateHeigth() async {
    await Future.delayed(const Duration(milliseconds: 300));
    height = widget.relativeHeightFactore;
    if(mounted){
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
                  color: widget.barColor,
                  borderRadius: widget.borderRadius ??
                      const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
              duration: const Duration(seconds: 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: ((e.y / widget.maxYValue * 100) * height) / 3,
                    decoration: BoxDecoration(color: widget.firstOverlayColor),
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: ((e.y / widget.maxYValue * 100) * height) / 3,
                    decoration: BoxDecoration(color: widget.secondOverlayColor),
                  )
                ],
              ),
            );
          }).toList(),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: columnBarChartData.map((e) {
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
