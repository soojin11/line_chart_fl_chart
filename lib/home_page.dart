import 'package:flutter/material.dart';
import 'package:linechart_practice/line_chart.dart';

class LineChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: const Color(0xff020227),
        child: Container(
          padding: const EdgeInsets.only(top: 60, left: 20),
          child: LineChartWidget(),
        ),
      );
}
