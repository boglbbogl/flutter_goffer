// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_animation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateAnimationStateTearOff {
  const _$CreateAnimationStateTearOff();

  _CreateAnimationState call({required bool startAnimation}) {
    return _CreateAnimationState(
      startAnimation: startAnimation,
    );
  }
}

/// @nodoc
const $CreateAnimationState = _$CreateAnimationStateTearOff();

/// @nodoc
mixin _$CreateAnimationState {
  bool get startAnimation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateAnimationStateCopyWith<CreateAnimationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAnimationStateCopyWith<$Res> {
  factory $CreateAnimationStateCopyWith(CreateAnimationState value,
          $Res Function(CreateAnimationState) then) =
      _$CreateAnimationStateCopyWithImpl<$Res>;
  $Res call({bool startAnimation});
}

/// @nodoc
class _$CreateAnimationStateCopyWithImpl<$Res>
    implements $CreateAnimationStateCopyWith<$Res> {
  _$CreateAnimationStateCopyWithImpl(this._value, this._then);

  final CreateAnimationState _value;
  // ignore: unused_field
  final $Res Function(CreateAnimationState) _then;

  @override
  $Res call({
    Object? startAnimation = freezed,
  }) {
    return _then(_value.copyWith(
      startAnimation: startAnimation == freezed
          ? _value.startAnimation
          : startAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CreateAnimationStateCopyWith<$Res>
    implements $CreateAnimationStateCopyWith<$Res> {
  factory _$CreateAnimationStateCopyWith(_CreateAnimationState value,
          $Res Function(_CreateAnimationState) then) =
      __$CreateAnimationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool startAnimation});
}

/// @nodoc
class __$CreateAnimationStateCopyWithImpl<$Res>
    extends _$CreateAnimationStateCopyWithImpl<$Res>
    implements _$CreateAnimationStateCopyWith<$Res> {
  __$CreateAnimationStateCopyWithImpl(
      _CreateAnimationState _value, $Res Function(_CreateAnimationState) _then)
      : super(_value, (v) => _then(v as _CreateAnimationState));

  @override
  _CreateAnimationState get _value => super._value as _CreateAnimationState;

  @override
  $Res call({
    Object? startAnimation = freezed,
  }) {
    return _then(_CreateAnimationState(
      startAnimation: startAnimation == freezed
          ? _value.startAnimation
          : startAnimation // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateAnimationState implements _CreateAnimationState {
  _$_CreateAnimationState({required this.startAnimation});

  @override
  final bool startAnimation;

  @override
  String toString() {
    return 'CreateAnimationState(startAnimation: $startAnimation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateAnimationState &&
            (identical(other.startAnimation, startAnimation) ||
                const DeepCollectionEquality()
                    .equals(other.startAnimation, startAnimation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startAnimation);

  @JsonKey(ignore: true)
  @override
  _$CreateAnimationStateCopyWith<_CreateAnimationState> get copyWith =>
      __$CreateAnimationStateCopyWithImpl<_CreateAnimationState>(
          this, _$identity);
}

abstract class _CreateAnimationState implements CreateAnimationState {
  factory _CreateAnimationState({required bool startAnimation}) =
      _$_CreateAnimationState;

  @override
  bool get startAnimation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateAnimationStateCopyWith<_CreateAnimationState> get copyWith =>
      throw _privateConstructorUsedError;
}
