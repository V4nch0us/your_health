part of 'dynamics_bloc.dart';

@freezed
class DynamicsState with _$DynamicsState {
  const factory DynamicsState.loading() = _Loading;
  const factory DynamicsState.loaded({required DynamicsResponseEntity response}) = _Loaded;
  const factory DynamicsState.error({required Failure failure}) = _Error;
}
