// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamics_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicsResponse _$DynamicsResponseFromJson(Map<String, dynamic> json) {
  return _DynamicsResponse.fromJson(json);
}

/// @nodoc
mixin _$DynamicsResponse {
  List<Alert> get alerts => throw _privateConstructorUsedError;
  List<Dynamics> get dynamics => throw _privateConstructorUsedError;

  /// Serializes this DynamicsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicsResponseCopyWith<DynamicsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicsResponseCopyWith<$Res> {
  factory $DynamicsResponseCopyWith(
          DynamicsResponse value, $Res Function(DynamicsResponse) then) =
      _$DynamicsResponseCopyWithImpl<$Res, DynamicsResponse>;
  @useResult
  $Res call({List<Alert> alerts, List<Dynamics> dynamics});
}

/// @nodoc
class _$DynamicsResponseCopyWithImpl<$Res, $Val extends DynamicsResponse>
    implements $DynamicsResponseCopyWith<$Res> {
  _$DynamicsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = null,
    Object? dynamics = null,
  }) {
    return _then(_value.copyWith(
      alerts: null == alerts
          ? _value.alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<Alert>,
      dynamics: null == dynamics
          ? _value.dynamics
          : dynamics // ignore: cast_nullable_to_non_nullable
              as List<Dynamics>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicsResponseImplCopyWith<$Res>
    implements $DynamicsResponseCopyWith<$Res> {
  factory _$$DynamicsResponseImplCopyWith(_$DynamicsResponseImpl value,
          $Res Function(_$DynamicsResponseImpl) then) =
      __$$DynamicsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Alert> alerts, List<Dynamics> dynamics});
}

/// @nodoc
class __$$DynamicsResponseImplCopyWithImpl<$Res>
    extends _$DynamicsResponseCopyWithImpl<$Res, _$DynamicsResponseImpl>
    implements _$$DynamicsResponseImplCopyWith<$Res> {
  __$$DynamicsResponseImplCopyWithImpl(_$DynamicsResponseImpl _value,
      $Res Function(_$DynamicsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = null,
    Object? dynamics = null,
  }) {
    return _then(_$DynamicsResponseImpl(
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<Alert>,
      dynamics: null == dynamics
          ? _value._dynamics
          : dynamics // ignore: cast_nullable_to_non_nullable
              as List<Dynamics>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicsResponseImpl implements _DynamicsResponse {
  const _$DynamicsResponseImpl(
      {required final List<Alert> alerts,
      required final List<Dynamics> dynamics})
      : _alerts = alerts,
        _dynamics = dynamics;

  factory _$DynamicsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicsResponseImplFromJson(json);

  final List<Alert> _alerts;
  @override
  List<Alert> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  final List<Dynamics> _dynamics;
  @override
  List<Dynamics> get dynamics {
    if (_dynamics is EqualUnmodifiableListView) return _dynamics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dynamics);
  }

  @override
  String toString() {
    return 'DynamicsResponse(alerts: $alerts, dynamics: $dynamics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicsResponseImpl &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            const DeepCollectionEquality().equals(other._dynamics, _dynamics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_alerts),
      const DeepCollectionEquality().hash(_dynamics));

  /// Create a copy of DynamicsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicsResponseImplCopyWith<_$DynamicsResponseImpl> get copyWith =>
      __$$DynamicsResponseImplCopyWithImpl<_$DynamicsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicsResponseImplToJson(
      this,
    );
  }
}

abstract class _DynamicsResponse implements DynamicsResponse {
  const factory _DynamicsResponse(
      {required final List<Alert> alerts,
      required final List<Dynamics> dynamics}) = _$DynamicsResponseImpl;

  factory _DynamicsResponse.fromJson(Map<String, dynamic> json) =
      _$DynamicsResponseImpl.fromJson;

  @override
  List<Alert> get alerts;
  @override
  List<Dynamics> get dynamics;

  /// Create a copy of DynamicsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicsResponseImplCopyWith<_$DynamicsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Alert _$AlertFromJson(Map<String, dynamic> json) {
  return _Alert.fromJson(json);
}

/// @nodoc
mixin _$Alert {
  String get message => throw _privateConstructorUsedError;
  bool get resubmitLink => throw _privateConstructorUsedError;

  /// Serializes this Alert to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertCopyWith<Alert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertCopyWith<$Res> {
  factory $AlertCopyWith(Alert value, $Res Function(Alert) then) =
      _$AlertCopyWithImpl<$Res, Alert>;
  @useResult
  $Res call({String message, bool resubmitLink});
}

/// @nodoc
class _$AlertCopyWithImpl<$Res, $Val extends Alert>
    implements $AlertCopyWith<$Res> {
  _$AlertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? resubmitLink = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      resubmitLink: null == resubmitLink
          ? _value.resubmitLink
          : resubmitLink // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlertImplCopyWith<$Res> implements $AlertCopyWith<$Res> {
  factory _$$AlertImplCopyWith(
          _$AlertImpl value, $Res Function(_$AlertImpl) then) =
      __$$AlertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool resubmitLink});
}

/// @nodoc
class __$$AlertImplCopyWithImpl<$Res>
    extends _$AlertCopyWithImpl<$Res, _$AlertImpl>
    implements _$$AlertImplCopyWith<$Res> {
  __$$AlertImplCopyWithImpl(
      _$AlertImpl _value, $Res Function(_$AlertImpl) _then)
      : super(_value, _then);

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? resubmitLink = null,
  }) {
    return _then(_$AlertImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      resubmitLink: null == resubmitLink
          ? _value.resubmitLink
          : resubmitLink // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlertImpl implements _Alert {
  const _$AlertImpl({required this.message, required this.resubmitLink});

  factory _$AlertImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertImplFromJson(json);

  @override
  final String message;
  @override
  final bool resubmitLink;

  @override
  String toString() {
    return 'Alert(message: $message, resubmitLink: $resubmitLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.resubmitLink, resubmitLink) ||
                other.resubmitLink == resubmitLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, resubmitLink);

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      __$$AlertImplCopyWithImpl<_$AlertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertImplToJson(
      this,
    );
  }
}

abstract class _Alert implements Alert {
  const factory _Alert(
      {required final String message,
      required final bool resubmitLink}) = _$AlertImpl;

  factory _Alert.fromJson(Map<String, dynamic> json) = _$AlertImpl.fromJson;

  @override
  String get message;
  @override
  bool get resubmitLink;

  /// Create a copy of Alert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertImplCopyWith<_$AlertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dynamics _$DynamicsFromJson(Map<String, dynamic> json) {
  return _Dynamics.fromJson(json);
}

/// @nodoc
mixin _$Dynamics {
  String get date => throw _privateConstructorUsedError;
  String get lab => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this Dynamics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dynamics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicsCopyWith<Dynamics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicsCopyWith<$Res> {
  factory $DynamicsCopyWith(Dynamics value, $Res Function(Dynamics) then) =
      _$DynamicsCopyWithImpl<$Res, Dynamics>;
  @useResult
  $Res call({String date, String lab, double value});
}

/// @nodoc
class _$DynamicsCopyWithImpl<$Res, $Val extends Dynamics>
    implements $DynamicsCopyWith<$Res> {
  _$DynamicsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dynamics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? lab = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      lab: null == lab
          ? _value.lab
          : lab // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicsImplCopyWith<$Res>
    implements $DynamicsCopyWith<$Res> {
  factory _$$DynamicsImplCopyWith(
          _$DynamicsImpl value, $Res Function(_$DynamicsImpl) then) =
      __$$DynamicsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String lab, double value});
}

/// @nodoc
class __$$DynamicsImplCopyWithImpl<$Res>
    extends _$DynamicsCopyWithImpl<$Res, _$DynamicsImpl>
    implements _$$DynamicsImplCopyWith<$Res> {
  __$$DynamicsImplCopyWithImpl(
      _$DynamicsImpl _value, $Res Function(_$DynamicsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dynamics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? lab = null,
    Object? value = null,
  }) {
    return _then(_$DynamicsImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      lab: null == lab
          ? _value.lab
          : lab // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicsImpl implements _Dynamics {
  const _$DynamicsImpl(
      {required this.date, required this.lab, required this.value});

  factory _$DynamicsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicsImplFromJson(json);

  @override
  final String date;
  @override
  final String lab;
  @override
  final double value;

  @override
  String toString() {
    return 'Dynamics(date: $date, lab: $lab, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicsImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.lab, lab) || other.lab == lab) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, lab, value);

  /// Create a copy of Dynamics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicsImplCopyWith<_$DynamicsImpl> get copyWith =>
      __$$DynamicsImplCopyWithImpl<_$DynamicsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicsImplToJson(
      this,
    );
  }
}

abstract class _Dynamics implements Dynamics {
  const factory _Dynamics(
      {required final String date,
      required final String lab,
      required final double value}) = _$DynamicsImpl;

  factory _Dynamics.fromJson(Map<String, dynamic> json) =
      _$DynamicsImpl.fromJson;

  @override
  String get date;
  @override
  String get lab;
  @override
  double get value;

  /// Create a copy of Dynamics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicsImplCopyWith<_$DynamicsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
