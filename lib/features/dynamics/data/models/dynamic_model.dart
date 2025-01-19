import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/dynamic_entity.dart';

part 'dynamic_model.freezed.dart';
part 'dynamic_model.g.dart';

@freezed
class DynamicsResponseModel extends DynamicsResponseEntity with _$DynamicsResponseModel {
  const factory DynamicsResponseModel({
    required List<AlertModel> alerts,
    required List<DynamicModel> dynamics,
  }) = _DynamicsResponseModel;

  factory DynamicsResponseModel.fromJson(Map<String, dynamic> json) => _$DynamicsResponseModelFromJson(json);
}

@freezed
class AlertModel extends AlertEntity with _$AlertModel {
  const factory AlertModel({
    required String message,
    required bool resubmitLink,
  }) = _AlertModel;

  factory AlertModel.fromJson(Map<String, dynamic> json) => _$AlertModelFromJson(json);
}

@freezed
class DynamicModel extends DynamicEntity with _$DynamicModel {
  const factory DynamicModel({
    required String date,
    required String lab,
    required double value,
  }) = _DynamicModel;

  factory DynamicModel.fromJson(Map<String, dynamic> json) => _$DynamicModelFromJson(json);
}
