import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamics_response.freezed.dart';
part 'dynamics_response.g.dart';

@freezed
class DynamicsResponse with _$DynamicsResponse {
  const factory DynamicsResponse({
    required List<Alert> alerts,
    required List<Dynamics> dynamics,
  }) = _DynamicsResponse;

  factory DynamicsResponse.fromJson(Map<String, dynamic> json) => _$DynamicsResponseFromJson(json);
}

@freezed
class Alert with _$Alert {
  const factory Alert({
    required String message,
    required bool resubmitLink,
  }) = _Alert;

  factory Alert.fromJson(Map<String, dynamic> json) => _$AlertFromJson(json);
}

@freezed
class Dynamics with _$Dynamics {
  const factory Dynamics({
    required String date,
    required String lab,
    required double value,
  }) = _Dynamics;

  factory Dynamics.fromJson(Map<String, dynamic> json) => _$DynamicsFromJson(json);
}
