// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicsResponseModelImpl _$$DynamicsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicsResponseModelImpl(
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) => AlertModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      dynamics: (json['dynamics'] as List<dynamic>)
          .map((e) => DynamicModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DynamicsResponseModelImplToJson(
        _$DynamicsResponseModelImpl instance) =>
    <String, dynamic>{
      'alerts': instance.alerts,
      'dynamics': instance.dynamics,
    };

_$AlertModelImpl _$$AlertModelImplFromJson(Map<String, dynamic> json) =>
    _$AlertModelImpl(
      message: json['message'] as String,
      resubmitLink: json['resubmitLink'] as bool,
    );

Map<String, dynamic> _$$AlertModelImplToJson(_$AlertModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'resubmitLink': instance.resubmitLink,
    };

_$DynamicModelImpl _$$DynamicModelImplFromJson(Map<String, dynamic> json) =>
    _$DynamicModelImpl(
      date: json['date'] as String,
      lab: json['lab'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$DynamicModelImplToJson(_$DynamicModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'lab': instance.lab,
      'value': instance.value,
    };
