import 'package:responsive_dashboard/Data/Datasource/Resources/imports.dart';

class DesktopLayoutForMoreThan1200Width extends StatelessWidget {
  const DesktopLayoutForMoreThan1200Width({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(children: [
      const Row(
        children: [
          LineChartWidget(),
          SizedBox(width: 10),
          VerticalBarChartWidget()
        ],
      ).customPadding(t: 10),
      const Row(
        children: [
          CheckTableWidget(),
          SizedBox(width: 10),
          DailyTrafficWidget(),
          SizedBox(width: 10),
          PieChartWidget(),
        ],
      ).customPadding(t: 10),
      if (size.width > 1600)
        const Row(
          children: [
            ComplexTableWidget(),
            SizedBox(width: 10),
            TaskListWidget(),
            SizedBox(width: 10),
            DatePickerWidget(),
          ],
        ).customPadding(t: 10),
      if (size.width < 1600)
        Column(
          children: [
            const Row(
              children: [
                ComplexTableWidget(),
                SizedBox(width: 10),
              ],
            ).customPadding(t: 10),
            const Row(
              children: [
                TaskListWidget(),
                SizedBox(width: 10),
                DatePickerWidget(),
              ],
            ).customPadding(t: 10),
            const Row(
              children: [
                BusinessDesignWidget(),
                SizedBox(width: 10),
                UserListWidget(),
              ],
            ).customPadding(t: 10),
            const Row(
              children: [
                ControlCardWidget(),
                SizedBox(width: 10),
                StarbucksWidget(),
              ],
            ).customPadding(t: 10),
          ],
        ),
      if (size.width > 1600)
        const Row(
          children: [
            BusinessDesignWidget(),
            SizedBox(width: 10),
            UserListWidget(),
            SizedBox(width: 10),
            ControlCardWidget(),
            SizedBox(width: 10),
            StarbucksWidget(),
          ],
        ).customPadding(t: 10),
    ]);
  }
}
