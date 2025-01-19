import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../../domain/entities/dynamic_entity.dart';
import '../../domain/usecases/get_dynamics.dart';

part 'dynamics_bloc.freezed.dart';
part 'dynamics_event.dart';
part 'dynamics_state.dart';

@injectable
class DynamicsBloc extends Bloc<DynamicsEvent, DynamicsState> {
  final GetDynamicsUseCase _getDynamicsUseCase;

  DynamicsBloc(this._getDynamicsUseCase) : super(_Loading()) {
    on<DynamicsEvent>((event, emit) async {
      await event.when(
        fetch: () async => await _handleEventFetch(emit),
      );
    });

    add(DynamicsEvent.fetch());
  }

  Future<void> _handleEventFetch(Emitter emit) async {
    emit(const _Loading());
    final failureOrData = await _getDynamicsUseCase();

    failureOrData.fold(
      (failure) => emit(_Error(failure: failure)),
      (response) => emit(_Loaded(response: response)),
    );
  }
}
