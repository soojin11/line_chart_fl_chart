import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:linechart_practice/line_titles.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xFFF3F711),
  ]; //색 그라데이션 주기

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 6, //데이터를 몇개 넣을 것인지~~
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            //라인 보여줄것인지 말것인지
            show: true,
            getDrawingHorizontalLine: (value) {
              //수평선
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1, //라인 굵기
              );
            },
            drawVerticalLine: true, //수직선
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(
                color: const Color(0xff37434d), width: 1), //border만들어서 값 넣기
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(2.6, 2),
                FlSpot(4.9, 5),
                FlSpot(6.8, 2.5),
                FlSpot(8, 4),
                FlSpot(9.5, 3),
                FlSpot(11, 4),
              ],
              isCurved: true, //그래프 곡선으로 만들기
              colors: gradientColors,
              barWidth: 5, //그래프 선 굵기
              //dotData: FlDotData(show: false), //FlSpot 값 안보이게하기
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(0.5))
                    .toList(), // 안에 색 채우기
              ),
            ),
          ],
        ),
      );
}
