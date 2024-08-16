// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/app_textstyles.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/extensions/styling.dart';
import 'package:responsive_dashboard/Presentation/Common/app_text.dart';
import 'package:collection/collection.dart';

class StackedImageList extends StatefulWidget {
  const StackedImageList({
    super.key,
    this.limitTo,
    required this.imageUrls,
  });
  final int? limitTo;
  final List<String> imageUrls;

  @override
  State<StackedImageList> createState() => _StackedImageListState();
}

class _StackedImageListState extends State<StackedImageList> {
  List<String> imageUrls = [];

  @override
  void initState() {
    imageUrls = widget.imageUrls.take(widget.limitTo ?? 4).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ...imageUrls.mapIndexed(
        (index, element) => Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image:
                DecorationImage(image: AssetImage(element), fit: BoxFit.cover),
            border: Border.all(
                strokeAlign: BorderSide.strokeAlignOutside,
                color: AppColors.lightColor3,
                width: 4),
          ),
        ).customPadding(l: index * 25),
      ),
      Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              strokeAlign: BorderSide.strokeAlignOutside,
              color: AppColors.lightColor3,
              width: 4),
          color: AppColors.lightblackColor,
        ),
        child: Center(
          child: AppText(
              text: '${widget.imageUrls.length - imageUrls.length}+',
              style: AppTextStyles.circularStdMedium(
                  color: AppColors.purpleColor, fontSize: 12)),
        ),
      ).customPadding(l: imageUrls.length * 25),
    ]);
  }
}
