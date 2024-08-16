

import 'dart:developer';

import 'package:responsive_dashboard/Data/Datasource/Resources/imports.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, this.whichLayout});
  final String? whichLayout;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  CustomDrawerController customDrawerController = CustomDrawerController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    log(widget.whichLayout.toString());
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      key: _globalKey,
      backgroundColor: AppColors.lightblackColor,
      extendBody: true,
      extendBodyBehindAppBar: true,
      drawer: CustomDrawer(customDrawerController: customDrawerController),
      body: Row(
        children: [
          widget.whichLayout == 'desktop'
              ? CustomDrawer(customDrawerController: customDrawerController)
              : SizedBox(height: 0.sp,width:0.sp),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 40, bottom: 20),
              child: ListView.builder(
                // shrinkWrap:
                // true,
                cacheExtent: 1.sh,
                itemBuilder: (BuildContext context, int index) {

                  return Column(
                    //shrinkWrap: true,

                    children: [
                      Row(
                        children: [
                          widget.whichLayout != 'desktop'
                              ? GestureDetector(
                            onTap: () {
                              _globalKey.currentState?.openDrawer();
                            },
                            child: const Icon(Icons.menu),
                          ).customPadding(r: 10)
                              : Container(),
                          AppText(
                              text: 'Pages / Dashboard',
                              style: AppTextStyles.circularStdRegular(
                                  fontSize: 14, color: AppColors.lightColor1)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                              text: 'Main Dashboard',
                              style: AppTextStyles.circularStdRegular(
                                  fontSize: 34, color: AppColors.darkBlueColor)),
                          if (widget.whichLayout == 'desktop')
                            SearchWidget(whichLayout: widget.whichLayout)
                        ],
                      ),
                      if (widget.whichLayout != 'desktop') const SizedBox(height: 20),
                      if (widget.whichLayout != 'desktop')
                        SearchWidget(whichLayout: widget.whichLayout),
                      const SizedBox(height: 20),
                      const Topbar(),

                      // dashboard items
                      if (widget.whichLayout == 'desktop' && size.width > 1200)
                        const DesktopLayoutForMoreThan1200Width(),
                      if (widget.whichLayout == 'desktop' && size.width < 1200)
                        const DesktopLayoutForLessThan1200Width(),
                      if (widget.whichLayout == 'tablet' && size.width > 900)
                        const TabletLayoutForMoreThan900Width(),
                      if (widget.whichLayout == 'tablet' && size.width < 900)
                        const TabletLayoutForLessThan900Width(),
                      if (widget.whichLayout == 'mobile') const MobileLayout(),
                    ],
                  );
                },
                itemCount: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
