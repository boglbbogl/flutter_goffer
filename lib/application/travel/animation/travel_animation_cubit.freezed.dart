// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'travel_animation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TravelAnimationStateTearOff {
  const _$TravelAnimationStateTearOff();

  _TravelAnimationState call(
      {required int switcherIndex, required bool isExpandable}) {
    return _TravelAnimationState(
      switcherIndex: switcherIndex,
      isExpandable: isExpandable,
    );
  }
}

/// @nodoc
const $TravelAnimationState = _$TravelAnimationStateTearOff();

/// @nodoc
mixin _$TravelAnimationState {
  int get switcherIndex => throw _privateConstructorUsedError;
  bool get isExpandable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelAnimationStateCopyWith<TravelAnimationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelAnimationStateCopyWith<$Res> {
  factory $TravelAnimationStateCopyWith(TravelAnimationState value,
          $Res Function(TravelAnimationState) then) =
      _$TravelAnimationStateCopyWithImpl<$Res>;
  $Res call({int switcherIndex, bool isExpandable});
}

/// @nodoc
class _$TravelAnimationStateCopyWithImpl<$Res>
    implements $TravelAnimationStateCopyWith<$Res> {
  _$TravelAnimationStateCopyWithImpl(this._value, this._then);

  final TravelAnimationState _value;
  // ignore: unused_field
  final $Res Function(TravelAnimationState) _then;

  @override
  $Res call({
    Object? switcherIndex = freezed,
    Object? isExpandable = freezed,
  }) {
    return _then(_value.copyWith(
      switcherIndex: switcherIndex == freezed
          ? _value.switcherIndex
          : switcherIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isExpandable: isExpandable == freezed
          ? _value.isExpandable
          : isExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TravelAnimationStateCopyWith<$Res>
    implements $TravelAnimationStateCopyWith<$Res> {
  factory _$TravelAnimationStateCopyWith(_TravelAnimationState value,
          $Res Function(_TravelAnimationState) then) =
      __$TravelAnimationStateCopyWithImpl<$Res>;
  @override
  $Res call({int switcherIndex, bool isExpandable});
}

/// @nodoc
class __$TravelAnimationStateCopyWithImpl<$Res>
    extends _$TravelAnimationStateCopyWithImpl<$Res>
    implements _$TravelAnimationStateCopyWith<$Res> {
  __$TravelAnimationStateCopyWithImpl(
      _TravelAnimationState _value, $Res Function(_TravelAnimationState) _then)
      : super(_value, (v) => _then(v as _TravelAnimationState));

  @override
  _TravelAnimationState get _value => super._value as _TravelAnimationState;

  @override
  $Res call({
    Object? switcherIndex = freezed,
    Object? isExpandable = freezed,
  }) {
    return _then(_TravelAnimationState(
      switcherIndex: switcherIndex == freezed
          ? _value.switcherIndex
          : switcherIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isExpandable: isExpandable == freezed
          ? _value.isExpandable
          : isExpandable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TravelAnimationState implements _TravelAnimationState {
  _$_TravelAnimationState(
      {required this.switcherIndex, required this.isExpandable});

  @override
  final int switcherIndex;
  @override
  final bool isExpandable;

  @override
  String toString() {
    return 'TravelAnimationState(switcherIndex: $switcherIndex, isExpandable: $isExpandable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelAnimationState &&
            (identical(other.switcherIndex, switcherIndex) ||
                const DeepCollectionEquality()
                    .equals(other.switcherIndex, switcherIndex)) &&
            (identical(other.isExpandable, isExpandable) ||
                const DeepCollectionEquality()
                    .equals(other.isExpandable, isExpandable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(switcherIndex) ^
      const DeepCollectionEquality().hash(isExpandable);

  @JsonKey(ignore: true)
  @override
  _$TravelAnimationStateCopyWith<_TravelAnimationState> get copyWith =>
      __$TravelAnimationStateCopyWithImpl<_TravelAnimationState>(
          this, _$identity);
}

abstract class _TravelAnimationState implements TravelAnimationState {
  factory _TravelAnimationState(
      {required int switcherIndex,
      required bool isExpandable}) = _$_TravelAnimationState;

  @override
  int get switcherIndex => throw _privateConstructorUsedError;
  @override
  bool get isExpandable => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelAnimationStateCopyWith<_TravelAnimationState> get copyWith =>
      throw _privateConstructorUsedError;
}
