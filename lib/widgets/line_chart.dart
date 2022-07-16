import 'package:assignment_app/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MyLineGraph extends StatelessWidget {
  const MyLineGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 80,
      child: LineChart(LineChartData(
          titlesData: FlTitlesData(show: false),
          maxX: 11,
          minX: 0,
          maxY: 11,
          minY: 0,
          borderData: FlBorderData(
              show: true, border: Border.all(color: Colors.transparent)),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(color: Colors.transparent);
            },
            getDrawingVerticalLine: (value) {
              return FlLine(color: Colors.transparent);
            },
          ),
          backgroundColor: Colors.white,
          lineBarsData: [
            LineChartBarData(
                isCurved: true,
                dotData: FlDotData(show: false),
                color: AppColor.blueColor,
                spots: [
                  const FlSpot(0, 0),
                  const FlSpot(1, 0.3),
                  const FlSpot(2, 0.5),
                  const FlSpot(3, 2),
                  const FlSpot(4, 3),
                  const FlSpot(5, 4),
                  const FlSpot(6, 3),
                  const FlSpot(7, 1),
                  const FlSpot(8, 2),
                  const FlSpot(9, 3),
                  const FlSpot(10, 7),
                  const FlSpot(11, 6),
                ])
          ])),
    );
  }
}
