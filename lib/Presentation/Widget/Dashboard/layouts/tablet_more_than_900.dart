import 'package:responsive_dashboard/Data/Datasource/Resources/imports.dart';

class TabletLayoutForMoreThan900Width extends StatelessWidget {
  const TabletLayoutForMoreThan900Width({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
      )
    ]);
  }
}
