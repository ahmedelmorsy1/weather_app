// import 'package:syncfusion_flutter_charts/charts.dart';
// import '../barell_file.dart';


// class MyChart extends GetView<HomeController> {

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 240,
//       child: Card(
//         elevation: 5,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: SfCartesianChart(
//           primaryXAxis: CategoryAxis(),
//           series: <ChartSeries<Weather, String>>[
//             SplineSeries<Weather, String>(
//               dataSource: controller.getFiveDaysData(),
//               xValueMapper: (FiveDayData f, _) =>
//               f.dateTime,
//               yValueMapper: (FiveDayData f, _) =>
//               f.temp,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }