import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/Presentation/Widget/Dashboard/dashboard_screen.dart';
import 'package:responsive_dashboard/Presentation/Widget/ResponsiveLayout/responsive_layout.dart';

class ResponsiveEntry extends StatefulWidget {
  const ResponsiveEntry({super.key});

  @override
  State<ResponsiveEntry> createState() => _ResponsiveEntryState();
}

class _ResponsiveEntryState extends State<ResponsiveEntry> {
  static const mobile = DashboardScreen(whichLayout: 'mobile');
  static const tablet = DashboardScreen(whichLayout: 'tablet');
  static const desktop = DashboardScreen(whichLayout: 'desktop');
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      // mobileBody: LoginScreen(whichLayout: 'mobile'),
      // tabletBody: LoginScreen(whichLayout: 'tablet'),
      // desktopBody: LoginScreen(whichLayout: 'desktop')
      mobileBody: mobile,
      tabletBody: tablet,
      desktopBody: desktop,
    );
  }
}
