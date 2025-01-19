import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

import '../../../../core/di/injectable.dart';
import '../../../../core/ui/app_colors.dart';
import '../../../../core/ui/app_theme.dart';
import '../../domain/entities/dynamic_entity.dart';
import '../bloc/dynamics_bloc.dart';

class DynamicsPage extends StatelessWidget {
  const DynamicsPage({super.key});

  static const _appBarHeight = 44.0;
  static const _appBarIconSize = 20.0;

  static const _sidePadding = 20.0;
  static const _titlePadding = 20.0;
  static const _chartPadding = 20.0;
  static const _alertPadding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: _sidePadding),
          child: BlocBuilder<DynamicsBloc, DynamicsState>(
            bloc: sl<DynamicsBloc>(),
            builder: (context, state) {
              return state.when(
                loading: () => CircularProgressIndicator(),
                loaded: (response) {
                  return RefreshIndicator(
                    onRefresh: () async => sl<DynamicsBloc>().add(DynamicsEvent.fetch()),
                    child: CustomScrollView(
                      slivers: [
                        SliverAppBar(
                          toolbarHeight: _appBarHeight,
                          leading: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.arrow_back_ios, size: _appBarIconSize),
                              SizedBox(),
                            ],
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: _titlePadding),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(AppLocalizations.of(context)!.pageTitle, style: AppTextStyles.title),
                                    Text(AppLocalizations.of(context)!.pageSubTitle, style: AppTextStyles.subtitle),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: _chartPadding),
                                child: Container(
                                  height: 160,
                                  color: AppColors.chartFill,
                                ),
                              ),
                              response.alerts.isNotEmpty
                                  ? Padding(
                                      padding: const EdgeInsets.only(bottom: _alertPadding),
                                      child: ResubmitAlert(alert: response.alerts.first),
                                    )
                                  : SizedBox(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(AppLocalizations.of(context)!.columnNameDate),
                                  Text(AppLocalizations.of(context)!.columnNameValue),
                                ],
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                        SliverList.separated(
                          itemBuilder: (_, index) {
                            final dynamic = response.dynamics[index];
                            return DataTile(
                              date: dynamic.date,
                              lab: dynamic.lab,
                              value: dynamic.value,
                            );
                          },
                          separatorBuilder: (_, index) => Divider(),
                          itemCount: response.dynamics.length,
                        ),
                      ],
                    ),
                  );
                },
                error: (error) => Text(error.toString()),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ResubmitAlert extends StatelessWidget {
  const ResubmitAlert({
    super.key,
    required this.alert,
  });

  final AlertEntity alert;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: AppColors.alertFill,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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

  static const valueThreshold = 2.8;
  static const dateFormatPattern = "d MMM";

  static const tileHeight = 70.0;
  static const dateLabGap = 11.0;

  static const valueFontSize = 28.0;
  static const valueFontWeight = FontWeight.w600;

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat(dateFormatPattern).format(DateTime.parse(date));
    final valueColor = value < valueThreshold ? AppColors.orange : AppColors.green;

    return SizedBox(
      height: tileHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(formattedDate, style: AppTextStyles.dataTileDate),
          SizedBox(width: dateLabGap),
          Expanded(child: Text(lab, style: AppTextStyles.dataTileLabName)),
          Text(
            value.toString(),
            style: TextStyle(
              fontSize: valueFontSize,
              fontWeight: valueFontWeight,
              color: valueColor,
            ),
          )
        ],
      ),
    );
  }
}
