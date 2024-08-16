import 'package:responsive_dashboard/Data/Datasource/Resources/imports.dart';


class TabletLayoutForLessThan900Width extends StatelessWidget {
  const TabletLayoutForLessThan900Width({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(children: [
      const SizedBox(height: 10),
      const Row(children: [LineChartWidget()]).customPadding(b: 10, t: 10),
      const Row(children: [VerticalBarChartWidget()]).customPadding(b: 10),
      const Row(children: [CheckTableWidget()]).customPadding(b: 10),
      const Row(
        children: [
          DailyTrafficWidget(),
          SizedBox(width: 10),
          PieChartWidget(),
        ],
      ).customPadding(b: 10),
      const Row(children: [ComplexTableWidget()]).customPadding(b: 10),
      if (size.width > 700)
        Column(
          children: [
            const Row(
              children: [
                TaskListWidget(),
                SizedBox(width: 10),
                DatePickerWidget(),
              ],
            ),
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
      if (size.width < 700)
        Column(
          children: [
            const Row(children: [TaskListWidget()]).customPadding(b: 10),
            const Row(children: [DatePickerWidget()]).customPadding(b: 10),
            const Row(children: [BusinessDesignWidget()]).customPadding(b: 10),
            const Row(children: [UserListWidget()]).customPadding(b: 10),
            const Row(children: [ControlCardWidget()]).customPadding(b: 10),
            const Row(children: [StarbucksWidget()]).customPadding(b: 10),
          ],
        ),
    ]);
  }
}
