// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreatePlanTearOff {
  const _$CreatePlanTearOff();

  _CreatePlan call(
      {required String startDate,
      required String endDate,
      required String startTime,
      required String endTime}) {
    return _CreatePlan(
      startDate: startDate,
      endDate: endDate,
      startTime: startTime,
      endTime: endTime,
    );
  }
}

/// @nodoc
const $CreatePlan = _$CreatePlanTearOff();

/// @nodoc
mixin _$CreatePlan {
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePlanCopyWith<CreatePlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlanCopyWith<$Res> {
  factory $CreatePlanCopyWith(
          CreatePlan value, $Res Function(CreatePlan) then) =
      _$CreatePlanCopyWithImpl<$Res>;
  $Res call(
      {String startDate, String endDate, String startTime, String endTime});
}

/// @nodoc
class _$CreatePlanCopyWithImpl<$Res> implements $CreatePlanCopyWith<$Res> {
  _$CreatePlanCopyWithImpl(this._value, this._then);

  final CreatePlan _value;
  // ignore: unused_field
  final $Res Function(CreatePlan) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CreatePlanCopyWith<$Res> implements $CreatePlanCopyWith<$Res> {
  factory _$CreatePlanCopyWith(
          _CreatePlan value, $Res Function(_CreatePlan) then) =
      __$CreatePlanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String startDate, String endDate, String startTime, String endTime});
}

/// @nodoc
class __$CreatePlanCopyWithImpl<$Res> extends _$CreatePlanCopyWithImpl<$Res>
    implements _$CreatePlanCopyWith<$Res> {
  __$CreatePlanCopyWithImpl(
      _CreatePlan _value, $Res Function(_CreatePlan) _then)
      : super(_value, (v) => _then(v as _CreatePlan));

  @override
  _CreatePlan get _value => super._value as _CreatePlan;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_CreatePlan(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreatePlan implements _CreatePlan {
  const _$_CreatePlan(
      {required this.startDate,
      required this.endDate,
      required this.startTime,
      required this.endTime});

  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString() {
    return 'CreatePlan(startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreatePlan &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality().equals(other.endTime, endTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime);

  @JsonKey(ignore: true)
  @override
  _$CreatePlanCopyWith<_CreatePlan> get copyWith =>
      __$CreatePlanCopyWithImpl<_CreatePlan>(this, _$identity);
}

abstract class _CreatePlan implements CreatePlan {
  const factory _CreatePlan(
      {required String startDate,
      required String endDate,
      required String startTime,
      required String endTime}) = _$_CreatePlan;

  @override
  String get startDate => throw _privateConstructorUsedError;
  @override
  String get endDate => throw _privateConstructorUsedError;
  @override
  String get startTime => throw _privateConstructorUsedError;
  @override
  String get endTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreatePlanCopyWith<_CreatePlan> get copyWith =>
      throw _privateConstructorUsedError;
}
