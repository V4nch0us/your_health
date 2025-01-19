import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../../core/ui/app_theme.dart';
import '../../domain/entities/dynamic_entity.dart';

class DynamicChart extends StatefulWidget {
  const DynamicChart({
    super.key,
    required this.dynamics,
  });

  final List<DynamicEntity> dynamics;

  static const _chartHight = 160.0;
  static const _dateFormatPattern = 'd MMM y';

  static const _minXValue = 0.5;
  static const _maxXValueShift = 1.5;
  static const _minYValue = 2.0;
  static const _maxYValue = 4.5;

  @override
  State<DynamicChart> createState() => _DynamicChartState();
}

class _DynamicChartState extends State<DynamicChart> {
  List<FlSpot> getSpots() {
    final List<FlSpot> spots = [];
    for (var i = 0; i < widget.dynamics.length; i++) {
      spots.add(FlSpot(i.toDouble(), widget.dynamics[i].value));
    }
    return spots;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      height: DynamicChart._chartHight,
      child: LineChart(
        LineChartData(
          backgroundColor: AppColors.chartFill,
          minX: DynamicChart._minXValue,
          maxX: widget.dynamics.length.toDouble() - DynamicChart._maxXValueShift,
          minY: DynamicChart._minYValue,
          maxY: DynamicChart._maxYValue,
          lineBarsData: _lineBarsData,
          titlesData: _flTitlesData,
          lineTouchData: _lineTouchData,
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
        ),
      ),
    );
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    final text = Text(
      DateFormat(DynamicChart._dateFormatPattern).format(DateTime.parse(widget.dynamics[value.toInt()].date)),
      style: AppTextStyles.chartLabel,
    );

    return SideTitleWidget(
      meta: meta,
      child: text,
    );
  }

  List<LineChartBarData> get _lineBarsData => [
        LineChartBarData(
          spots: getSpots(),
          isCurved: true,
          color: AppColors.green,
          barWidth: 3,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
          belowBarData: BarAreaData(
            show: true,
            color: Color(0xFF69B137).withValues(alpha: 0.15),
          ),
        ),
      ];

  FlTitlesData get _flTitlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            maxIncluded: false,
            minIncluded: false,
            showTitles: true,
            interval: 1.5,
            getTitlesWidget: bottomTitleWidgets,
          ),
        ),
        rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      );

  LineTouchData get _lineTouchData => LineTouchData(
        getTouchedSpotIndicator: (barData, spotIndexes) {
          return spotIndexes.map((spotIndex) {
            return TouchedSpotIndicatorData(
              const FlLine(
                color: AppColors.chartGrey,
                strokeWidth: 1.5,
                dashArray: [3, 2],
              ),
              FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 10,
                    color: Colors.white,
                  );
                },
              ),
            );
          }).toList();
        },
      );
}
