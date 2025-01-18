// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicsResponseImpl _$$DynamicsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicsResponseImpl(
      alerts: (json['alerts'] as List<dynamic>)
          .map((e) => Alert.fromJson(e as Map<String, dynamic>))
          .toList(),
      dynamics: (json['dynamics'] as List<dynamic>)
          .map((e) => Dynamics.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DynamicsResponseImplToJson(
        _$DynamicsResponseImpl instance) =>
    <String, dynamic>{
      'alerts': instance.alerts,
      'dynamics': instance.dynamics,
    };

_$AlertImpl _$$AlertImplFromJson(Map<String, dynamic> json) => _$AlertImpl(
      message: json['message'] as String,
      resubmitLink: json['resubmitLink'] as bool,
    );

Map<String, dynamic> _$$AlertImplToJson(_$AlertImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'resubmitLink': instance.resubmitLink,
    };

_$DynamicsImpl _$$DynamicsImplFromJson(Map<String, dynamic> json) =>
    _$DynamicsImpl(
      date: json['date'] as String,
      lab: json['lab'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$DynamicsImplToJson(_$DynamicsImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'lab': instance.lab,
      'value': instance.value,
    };
