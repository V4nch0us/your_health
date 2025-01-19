import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/ui/app_colors.dart';
import '../../../../core/ui/app_theme.dart';
import '../../domain/entities/dynamic_entity.dart';

class ResubmitAlert extends StatelessWidget {
  const ResubmitAlert({
    super.key,
    required this.alert,
  });

  final AlertEntity alert;

  static const _boxHeight = 100.0;
  static const _borderRadius = 8.0;
  static const _contentPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _boxHeight,
      decoration: BoxDecoration(
        color: AppColors.alertFill,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(_contentPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(alert.message, style: AppTextStyles.alertMessage),
            alert.resubmitLink
                ? InkWell(
                    child: Text(
                      AppLocalizations.of(context)!.resubmitMarkersButton,
                      style: TextStyle(color: AppColors.blue),
                    ),
                    onTap: () => print('Resubmit requested'),
                  )
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
