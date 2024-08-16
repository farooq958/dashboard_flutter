import 'package:responsive_dashboard/Data/Datasource/Resources/imports.dart';

class DesktopLayoutForLessThan1200Width extends StatelessWidget {
  const DesktopLayoutForLessThan1200Width({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Row(children: [LineChartWidget()]).customPadding(b: 10, t: 10),
      const Row(children: [VerticalBarChartWidget()]).customPadding(t: 10),
      const Row(children: [CheckTableWidget()]).customPadding(t: 10),
      const Row(
        children: [DailyTrafficWidget(), SizedBox(width: 10), PieChartWidget()],
      ).customPadding(t: 10),
      const Row(children: [ComplexTableWidget()]).customPadding(t: 10),
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
    ]);
  }
}
