// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicsResponseModel _$DynamicsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DynamicsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DynamicsResponseModel {
  List<AlertModel> get alerts => throw _privateConstructorUsedError;
  List<DynamicModel> get dynamics => throw _privateConstructorUsedError;

  /// Serializes this DynamicsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicsResponseModelCopyWith<DynamicsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicsResponseModelCopyWith<$Res> {
  factory $DynamicsResponseModelCopyWith(DynamicsResponseModel value,
          $Res Function(DynamicsResponseModel) then) =
      _$DynamicsResponseModelCopyWithImpl<$Res, DynamicsResponseModel>;
  @useResult
  $Res call({List<AlertModel> alerts, List<DynamicModel> dynamics});
}

/// @nodoc
class _$DynamicsResponseModelCopyWithImpl<$Res,
        $Val extends DynamicsResponseModel>
    implements $DynamicsResponseModelCopyWith<$Res> {
  _$DynamicsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicsResponseModel
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
              as List<AlertModel>,
      dynamics: null == dynamics
          ? _value.dynamics
          : dynamics // ignore: cast_nullable_to_non_nullable
              as List<DynamicModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicsResponseModelImplCopyWith<$Res>
    implements $DynamicsResponseModelCopyWith<$Res> {
  factory _$$DynamicsResponseModelImplCopyWith(
          _$DynamicsResponseModelImpl value,
          $Res Function(_$DynamicsResponseModelImpl) then) =
      __$$DynamicsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AlertModel> alerts, List<DynamicModel> dynamics});
}

/// @nodoc
class __$$DynamicsResponseModelImplCopyWithImpl<$Res>
    extends _$DynamicsResponseModelCopyWithImpl<$Res,
        _$DynamicsResponseModelImpl>
    implements _$$DynamicsResponseModelImplCopyWith<$Res> {
  __$$DynamicsResponseModelImplCopyWithImpl(_$DynamicsResponseModelImpl _value,
      $Res Function(_$DynamicsResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alerts = null,
    Object? dynamics = null,
  }) {
    return _then(_$DynamicsResponseModelImpl(
      alerts: null == alerts
          ? _value._alerts
          : alerts // ignore: cast_nullable_to_non_nullable
              as List<AlertModel>,
      dynamics: null == dynamics
          ? _value._dynamics
          : dynamics // ignore: cast_nullable_to_non_nullable
              as List<DynamicModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicsResponseModelImpl implements _DynamicsResponseModel {
  const _$DynamicsResponseModelImpl(
      {required final List<AlertModel> alerts,
      required final List<DynamicModel> dynamics})
      : _alerts = alerts,
        _dynamics = dynamics;

  factory _$DynamicsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicsResponseModelImplFromJson(json);

  final List<AlertModel> _alerts;
  @override
  List<AlertModel> get alerts {
    if (_alerts is EqualUnmodifiableListView) return _alerts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alerts);
  }

  final List<DynamicModel> _dynamics;
  @override
  List<DynamicModel> get dynamics {
    if (_dynamics is EqualUnmodifiableListView) return _dynamics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dynamics);
  }

  @override
  String toString() {
    return 'DynamicsResponseModel(alerts: $alerts, dynamics: $dynamics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicsResponseModelImpl &&
            const DeepCollectionEquality().equals(other._alerts, _alerts) &&
            const DeepCollectionEquality().equals(other._dynamics, _dynamics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_alerts),
      const DeepCollectionEquality().hash(_dynamics));

  /// Create a copy of DynamicsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicsResponseModelImplCopyWith<_$DynamicsResponseModelImpl>
      get copyWith => __$$DynamicsResponseModelImplCopyWithImpl<
          _$DynamicsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DynamicsResponseModel implements DynamicsResponseModel {
  const factory _DynamicsResponseModel(
          {required final List<AlertModel> alerts,
          required final List<DynamicModel> dynamics}) =
      _$DynamicsResponseModelImpl;

  factory _DynamicsResponseModel.fromJson(Map<String, dynamic> json) =
      _$DynamicsResponseModelImpl.fromJson;

  @override
  List<AlertModel> get alerts;
  @override
  List<DynamicModel> get dynamics;

  /// Create a copy of DynamicsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicsResponseModelImplCopyWith<_$DynamicsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AlertModel _$AlertModelFromJson(Map<String, dynamic> json) {
  return _AlertModel.fromJson(json);
}

/// @nodoc
mixin _$AlertModel {
  String get message => throw _privateConstructorUsedError;
  bool get resubmitLink => throw _privateConstructorUsedError;

  /// Serializes this AlertModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AlertModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlertModelCopyWith<AlertModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlertModelCopyWith<$Res> {
  factory $AlertModelCopyWith(
          AlertModel value, $Res Function(AlertModel) then) =
      _$AlertModelCopyWithImpl<$Res, AlertModel>;
  @useResult
  $Res call({String message, bool resubmitLink});
}

/// @nodoc
class _$AlertModelCopyWithImpl<$Res, $Val extends AlertModel>
    implements $AlertModelCopyWith<$Res> {
  _$AlertModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AlertModel
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
abstract class _$$AlertModelImplCopyWith<$Res>
    implements $AlertModelCopyWith<$Res> {
  factory _$$AlertModelImplCopyWith(
          _$AlertModelImpl value, $Res Function(_$AlertModelImpl) then) =
      __$$AlertModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool resubmitLink});
}

/// @nodoc
class __$$AlertModelImplCopyWithImpl<$Res>
    extends _$AlertModelCopyWithImpl<$Res, _$AlertModelImpl>
    implements _$$AlertModelImplCopyWith<$Res> {
  __$$AlertModelImplCopyWithImpl(
      _$AlertModelImpl _value, $Res Function(_$AlertModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AlertModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? resubmitLink = null,
  }) {
    return _then(_$AlertModelImpl(
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
class _$AlertModelImpl implements _AlertModel {
  const _$AlertModelImpl({required this.message, required this.resubmitLink});

  factory _$AlertModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlertModelImplFromJson(json);

  @override
  final String message;
  @override
  final bool resubmitLink;

  @override
  String toString() {
    return 'AlertModel(message: $message, resubmitLink: $resubmitLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlertModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.resubmitLink, resubmitLink) ||
                other.resubmitLink == resubmitLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, resubmitLink);

  /// Create a copy of AlertModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlertModelImplCopyWith<_$AlertModelImpl> get copyWith =>
      __$$AlertModelImplCopyWithImpl<_$AlertModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlertModelImplToJson(
      this,
    );
  }
}

abstract class _AlertModel implements AlertModel {
  const factory _AlertModel(
      {required final String message,
      required final bool resubmitLink}) = _$AlertModelImpl;

  factory _AlertModel.fromJson(Map<String, dynamic> json) =
      _$AlertModelImpl.fromJson;

  @override
  String get message;
  @override
  bool get resubmitLink;

  /// Create a copy of AlertModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlertModelImplCopyWith<_$AlertModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DynamicModel _$DynamicModelFromJson(Map<String, dynamic> json) {
  return _DynamicModel.fromJson(json);
}

/// @nodoc
mixin _$DynamicModel {
  String get date => throw _privateConstructorUsedError;
  String get lab => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  /// Serializes this DynamicModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicModelCopyWith<DynamicModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicModelCopyWith<$Res> {
  factory $DynamicModelCopyWith(
          DynamicModel value, $Res Function(DynamicModel) then) =
      _$DynamicModelCopyWithImpl<$Res, DynamicModel>;
  @useResult
  $Res call({String date, String lab, double value});
}

/// @nodoc
class _$DynamicModelCopyWithImpl<$Res, $Val extends DynamicModel>
    implements $DynamicModelCopyWith<$Res> {
  _$DynamicModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicModel
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
abstract class _$$DynamicModelImplCopyWith<$Res>
    implements $DynamicModelCopyWith<$Res> {
  factory _$$DynamicModelImplCopyWith(
          _$DynamicModelImpl value, $Res Function(_$DynamicModelImpl) then) =
      __$$DynamicModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, String lab, double value});
}

/// @nodoc
class __$$DynamicModelImplCopyWithImpl<$Res>
    extends _$DynamicModelCopyWithImpl<$Res, _$DynamicModelImpl>
    implements _$$DynamicModelImplCopyWith<$Res> {
  __$$DynamicModelImplCopyWithImpl(
      _$DynamicModelImpl _value, $Res Function(_$DynamicModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? lab = null,
    Object? value = null,
  }) {
    return _then(_$DynamicModelImpl(
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
class _$DynamicModelImpl implements _DynamicModel {
  const _$DynamicModelImpl(
      {required this.date, required this.lab, required this.value});

  factory _$DynamicModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicModelImplFromJson(json);

  @override
  final String date;
  @override
  final String lab;
  @override
  final double value;

  @override
  String toString() {
    return 'DynamicModel(date: $date, lab: $lab, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.lab, lab) || other.lab == lab) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, lab, value);

  /// Create a copy of DynamicModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicModelImplCopyWith<_$DynamicModelImpl> get copyWith =>
      __$$DynamicModelImplCopyWithImpl<_$DynamicModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicModelImplToJson(
      this,
    );
  }
}

abstract class _DynamicModel implements DynamicModel {
  const factory _DynamicModel(
      {required final String date,
      required final String lab,
      required final double value}) = _$DynamicModelImpl;

  factory _DynamicModel.fromJson(Map<String, dynamic> json) =
      _$DynamicModelImpl.fromJson;

  @override
  String get date;
  @override
  String get lab;
  @override
  double get value;

  /// Create a copy of DynamicModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicModelImplCopyWith<_$DynamicModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
