import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../../core/ui/app_theme.dart';

class DataTile extends StatelessWidget {
  const DataTile({
    super.key,
    required this.date,
    required this.lab,
    required this.value,
  });

  final String date;
  final String lab;
  final double value;

  static const _valueThreshold = 2.8;
  static const _dateFormatPattern = "d MMM";

  static const _tileHeight = 70.0;
  static const _dateLabGap = 11.0;

  static const _valueFontSize = 28.0;
  static const _valueFontWeight = FontWeight.w600;

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat(_dateFormatPattern).format(DateTime.parse(date));
    final valueColor = value < _valueThreshold ? AppColors.orange : AppColors.green;

    return SizedBox(
      height: _tileHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(formattedDate, style: AppTextStyles.dataTileDate),
          SizedBox(width: _dateLabGap),
          Expanded(child: Text(lab, style: AppTextStyles.dataTileLabName)),
          Text(
            value.toString(),
            style: TextStyle(
              fontSize: _valueFontSize,
              fontWeight: _valueFontWeight,
              color: valueColor,
            ),
          )
        ],
      ),
    );
  }
}
