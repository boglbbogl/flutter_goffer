// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateImageStateTearOff {
  const _$CreateImageStateTearOff();

  _CreateImageState call({required String planImg, required int planIndex}) {
    return _CreateImageState(
      planImg: planImg,
      planIndex: planIndex,
    );
  }
}

/// @nodoc
const $CreateImageState = _$CreateImageStateTearOff();

/// @nodoc
mixin _$CreateImageState {
  String get planImg => throw _privateConstructorUsedError;
  int get planIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateImageStateCopyWith<CreateImageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateImageStateCopyWith<$Res> {
  factory $CreateImageStateCopyWith(
          CreateImageState value, $Res Function(CreateImageState) then) =
      _$CreateImageStateCopyWithImpl<$Res>;
  $Res call({String planImg, int planIndex});
}

/// @nodoc
class _$CreateImageStateCopyWithImpl<$Res>
    implements $CreateImageStateCopyWith<$Res> {
  _$CreateImageStateCopyWithImpl(this._value, this._then);

  final CreateImageState _value;
  // ignore: unused_field
  final $Res Function(CreateImageState) _then;

  @override
  $Res call({
    Object? planImg = freezed,
    Object? planIndex = freezed,
  }) {
    return _then(_value.copyWith(
      planImg: planImg == freezed
          ? _value.planImg
          : planImg // ignore: cast_nullable_to_non_nullable
              as String,
      planIndex: planIndex == freezed
          ? _value.planIndex
          : planIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CreateImageStateCopyWith<$Res>
    implements $CreateImageStateCopyWith<$Res> {
  factory _$CreateImageStateCopyWith(
          _CreateImageState value, $Res Function(_CreateImageState) then) =
      __$CreateImageStateCopyWithImpl<$Res>;
  @override
  $Res call({String planImg, int planIndex});
}

/// @nodoc
class __$CreateImageStateCopyWithImpl<$Res>
    extends _$CreateImageStateCopyWithImpl<$Res>
    implements _$CreateImageStateCopyWith<$Res> {
  __$CreateImageStateCopyWithImpl(
      _CreateImageState _value, $Res Function(_CreateImageState) _then)
      : super(_value, (v) => _then(v as _CreateImageState));

  @override
  _CreateImageState get _value => super._value as _CreateImageState;

  @override
  $Res call({
    Object? planImg = freezed,
    Object? planIndex = freezed,
  }) {
    return _then(_CreateImageState(
      planImg: planImg == freezed
          ? _value.planImg
          : planImg // ignore: cast_nullable_to_non_nullable
              as String,
      planIndex: planIndex == freezed
          ? _value.planIndex
          : planIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CreateImageState implements _CreateImageState {
  _$_CreateImageState({required this.planImg, required this.planIndex});

  @override
  final String planImg;
  @override
  final int planIndex;

  @override
  String toString() {
    return 'CreateImageState(planImg: $planImg, planIndex: $planIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateImageState &&
            (identical(other.planImg, planImg) ||
                const DeepCollectionEquality()
                    .equals(other.planImg, planImg)) &&
            (identical(other.planIndex, planIndex) ||
                const DeepCollectionEquality()
                    .equals(other.planIndex, planIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(planImg) ^
      const DeepCollectionEquality().hash(planIndex);

  @JsonKey(ignore: true)
  @override
  _$CreateImageStateCopyWith<_CreateImageState> get copyWith =>
      __$CreateImageStateCopyWithImpl<_CreateImageState>(this, _$identity);
}

abstract class _CreateImageState implements CreateImageState {
  factory _CreateImageState({required String planImg, required int planIndex}) =
      _$_CreateImageState;

  @override
  String get planImg => throw _privateConstructorUsedError;
  @override
  int get planIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateImageStateCopyWith<_CreateImageState> get copyWith =>
      throw _privateConstructorUsedError;
}
