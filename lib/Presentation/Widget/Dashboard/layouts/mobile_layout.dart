import 'package:responsive_dashboard/Data/Datasource/Resources/imports.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(

      children: [
        SizedBox(height: 10),
        Row(
          children: [LineChartWidget()],
        ),
        SizedBox(height: 10),
        Row(
          children: [VerticalBarChartWidget()],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            CheckTableWidget(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            DailyTrafficWidget(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            PieChartWidget(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ComplexTableWidget(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            TaskListWidget(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            DatePickerWidget(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            BusinessDesignWidget(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            UserListWidget(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ControlCardWidget(),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            StarbucksWidget(),
          ],
        )
      ],
    );
  }
}
