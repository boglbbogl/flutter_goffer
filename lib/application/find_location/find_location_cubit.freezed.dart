// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'find_location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FindLocationStateTearOff {
  const _$FindLocationStateTearOff();

  _FindLocationState call(
      {required bool isLoading,
      required List<FindLocation> location,
      required bool isMore}) {
    return _FindLocationState(
      isLoading: isLoading,
      location: location,
      isMore: isMore,
    );
  }
}

/// @nodoc
const $FindLocationState = _$FindLocationStateTearOff();

/// @nodoc
mixin _$FindLocationState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<FindLocation> get location => throw _privateConstructorUsedError;
  bool get isMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FindLocationStateCopyWith<FindLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindLocationStateCopyWith<$Res> {
  factory $FindLocationStateCopyWith(
          FindLocationState value, $Res Function(FindLocationState) then) =
      _$FindLocationStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<FindLocation> location, bool isMore});
}

/// @nodoc
class _$FindLocationStateCopyWithImpl<$Res>
    implements $FindLocationStateCopyWith<$Res> {
  _$FindLocationStateCopyWithImpl(this._value, this._then);

  final FindLocationState _value;
  // ignore: unused_field
  final $Res Function(FindLocationState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? location = freezed,
    Object? isMore = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<FindLocation>,
      isMore: isMore == freezed
          ? _value.isMore
          : isMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$FindLocationStateCopyWith<$Res>
    implements $FindLocationStateCopyWith<$Res> {
  factory _$FindLocationStateCopyWith(
          _FindLocationState value, $Res Function(_FindLocationState) then) =
      __$FindLocationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<FindLocation> location, bool isMore});
}

/// @nodoc
class __$FindLocationStateCopyWithImpl<$Res>
    extends _$FindLocationStateCopyWithImpl<$Res>
    implements _$FindLocationStateCopyWith<$Res> {
  __$FindLocationStateCopyWithImpl(
      _FindLocationState _value, $Res Function(_FindLocationState) _then)
      : super(_value, (v) => _then(v as _FindLocationState));

  @override
  _FindLocationState get _value => super._value as _FindLocationState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? location = freezed,
    Object? isMore = freezed,
  }) {
    return _then(_FindLocationState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<FindLocation>,
      isMore: isMore == freezed
          ? _value.isMore
          : isMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FindLocationState implements _FindLocationState {
  _$_FindLocationState(
      {required this.isLoading, required this.location, required this.isMore});

  @override
  final bool isLoading;
  @override
  final List<FindLocation> location;
  @override
  final bool isMore;

  @override
  String toString() {
    return 'FindLocationState(isLoading: $isLoading, location: $location, isMore: $isMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindLocationState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.isMore, isMore) ||
                const DeepCollectionEquality().equals(other.isMore, isMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(isMore);

  @JsonKey(ignore: true)
  @override
  _$FindLocationStateCopyWith<_FindLocationState> get copyWith =>
      __$FindLocationStateCopyWithImpl<_FindLocationState>(this, _$identity);
}

abstract class _FindLocationState implements FindLocationState {
  factory _FindLocationState(
      {required bool isLoading,
      required List<FindLocation> location,
      required bool isMore}) = _$_FindLocationState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<FindLocation> get location => throw _privateConstructorUsedError;
  @override
  bool get isMore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FindLocationStateCopyWith<_FindLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
