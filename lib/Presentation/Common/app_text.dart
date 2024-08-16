import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLine;

  const AppText(
      {super.key,
      required this.text,
      required this.style,
      this.overflow,
      this.textAlign,
      this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      // ignore: deprecated_member_use
      textScaleFactor: 1,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: style,
    );
  }
}
