import 'package:responsive_dashboard/Data/Datasource/Resources/app_colors.dart';
import 'package:responsive_dashboard/Data/Datasource/Resources/assets.dart';
import 'package:responsive_dashboard/Domain/Models/column_barchart_model.dart';
import 'package:responsive_dashboard/Domain/Models/line_chart_models.dart';
import 'package:responsive_dashboard/Domain/Models/pie_chart_model.dart';
import 'package:responsive_dashboard/Domain/Models/task_model.dart';
import 'package:responsive_dashboard/Domain/Models/user_model.dart';

final linechartData = <LineChartModel>[
  LineChartModel(x: 'Jan', y: 43, secondSeriesYValue: 37),
  LineChartModel(x: 'Feb', y: 45, secondSeriesYValue: 37),
  LineChartModel(x: 'May', y: 63, secondSeriesYValue: 48),
  LineChartModel(x: 'Jun', y: 68, secondSeriesYValue: 20),
];

final columnBarChartData = [
  ColumnBarChatModel('CHN', 180),
  ColumnBarChatModel('GER', 70),
  ColumnBarChatModel('RUS', 30),
  ColumnBarChatModel('BRZ', 6.4),
  ColumnBarChatModel('IND', 78),
  ColumnBarChatModel('CHN', 20),
  ColumnBarChatModel('GER', 99),
  ColumnBarChatModel('RUS', 80),
  ColumnBarChatModel('BRZ', 70),
  ColumnBarChatModel('IND', 10)
];
double maxValueOfColumnChart() {
  List<double> ls = columnBarChartData.map((e) => e.y).toList();
  ls.sort();
  return ls.last;
}

final dailyTrafficData = [
  ColumnBarChatModel('CHN', 180),
  ColumnBarChatModel('GER', 70),
  ColumnBarChatModel('RUS', 30),
  ColumnBarChatModel('BRZ', 6.4),
  ColumnBarChatModel('IND', 78),
];
double maxValueOfdailyTrafficData() {
  List<double> ls = dailyTrafficData.map((e) => e.y).toList();
  ls.sort();
  return ls.last;
}

final pieChartData = [
  PieChartModel('CHN', 70, AppColors.lightblackColor),
  PieChartModel('GER', 70, AppColors.lightblueColor),
  PieChartModel('GER', 170, AppColors.purpleColor),
];

final userData = [
  UserModel(
      name: 'Adela Parkson',
      imageUrl: Assets.person1,
      designation: 'Creative Director'),
  UserModel(
      name: 'Christian Mad',
      imageUrl: Assets.person2,
      designation: 'Product Designer'),
  UserModel(
      name: 'Jason Statham',
      imageUrl: Assets.person3,
      designation: 'Junior Graphic Designer'),
  UserModel(
      name: 'Adela Parkson',
      imageUrl: Assets.person4,
      designation: 'Creative Director'),
  UserModel(
      name: 'Christian Mad',
      imageUrl: Assets.person2,
      designation: 'Product Designer'),
];

final List<String> checkTableColumns = ['NAME', 'PRGRESS', 'QUANTITY', 'DATE'];
final List<String> complexTableColumns = ['NAME', 'STATUS', 'DATE', 'PROGRESS'];

final List<TaskModel> tasks = List.generate(
    3,
    (index) => TaskModel(
        title: 'Mobile App Design #$index', isDone: index > 1 ? true : false));
