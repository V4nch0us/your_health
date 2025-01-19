import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/di/injectable.dart';
import '../../../../core/ui/app_theme.dart';
import '../bloc/dynamics_bloc.dart';
import '../widgets/chart.dart';
import '../widgets/data_tile.dart';
import '../widgets/resubmit_alert.dart';

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
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: _sidePadding),
          child: Center(
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
                                  child: DynamicChart(dynamics: response.dynamics),
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
                  error: (error) => ElevatedButton(
                    onPressed: () async => sl<DynamicsBloc>().add(DynamicsEvent.fetch()),
                    child: Text(AppLocalizations.of(context)!.retryButton),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
