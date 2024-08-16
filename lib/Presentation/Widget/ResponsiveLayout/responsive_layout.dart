import 'dart:developer';

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
   static Widget? mobile;
  static  Widget? tablet;
  static  Widget? desktop;
  @override
  void initState() {
    // TODO: implement initState
print("init called ");
    mobile = widget.mobileBody;
     tablet = widget.tabletBody;
     desktop =widget.desktopBody;
     super.initState();
  }

  @override
  void didUpdateWidget(covariant ResponsiveLayout oldWidget) {
    // TODO: implement didUpdateWidget
    // static const mobile = widget.mobileBody
    // static const tablet = widget.tabletBody
    // static const desktop =widget.desktopBody
    super.didUpdateWidget(oldWidget);
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        log(constraints.maxWidth.toString());
        print("rebuilded");
        if (constraints.maxWidth < 600) {
          return mobile??widget.mobileBody;
        } else if (constraints.maxWidth < 1100) {
          return tablet??widget.tabletBody;
        } else {
          return desktop??widget.desktopBody;
        }
      },
    );
  }
}
