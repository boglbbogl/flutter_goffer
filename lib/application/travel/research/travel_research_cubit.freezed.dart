// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'travel_research_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TravelResearchStateTearOff {
  const _$TravelResearchStateTearOff();

  _TravelResearchState call(
      {required TravelQuestionResearch? research, required int researchIndex}) {
    return _TravelResearchState(
      research: research,
      researchIndex: researchIndex,
    );
  }
}

/// @nodoc
const $TravelResearchState = _$TravelResearchStateTearOff();

/// @nodoc
mixin _$TravelResearchState {
  TravelQuestionResearch? get research => throw _privateConstructorUsedError;
  int get researchIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelResearchStateCopyWith<TravelResearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelResearchStateCopyWith<$Res> {
  factory $TravelResearchStateCopyWith(
          TravelResearchState value, $Res Function(TravelResearchState) then) =
      _$TravelResearchStateCopyWithImpl<$Res>;
  $Res call({TravelQuestionResearch? research, int researchIndex});

  $TravelQuestionResearchCopyWith<$Res>? get research;
}

/// @nodoc
class _$TravelResearchStateCopyWithImpl<$Res>
    implements $TravelResearchStateCopyWith<$Res> {
  _$TravelResearchStateCopyWithImpl(this._value, this._then);

  final TravelResearchState _value;
  // ignore: unused_field
  final $Res Function(TravelResearchState) _then;

  @override
  $Res call({
    Object? research = freezed,
    Object? researchIndex = freezed,
  }) {
    return _then(_value.copyWith(
      research: research == freezed
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as TravelQuestionResearch?,
      researchIndex: researchIndex == freezed
          ? _value.researchIndex
          : researchIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $TravelQuestionResearchCopyWith<$Res>? get research {
    if (_value.research == null) {
      return null;
    }

    return $TravelQuestionResearchCopyWith<$Res>(_value.research!, (value) {
      return _then(_value.copyWith(research: value));
    });
  }
}

/// @nodoc
abstract class _$TravelResearchStateCopyWith<$Res>
    implements $TravelResearchStateCopyWith<$Res> {
  factory _$TravelResearchStateCopyWith(_TravelResearchState value,
          $Res Function(_TravelResearchState) then) =
      __$TravelResearchStateCopyWithImpl<$Res>;
  @override
  $Res call({TravelQuestionResearch? research, int researchIndex});

  @override
  $TravelQuestionResearchCopyWith<$Res>? get research;
}

/// @nodoc
class __$TravelResearchStateCopyWithImpl<$Res>
    extends _$TravelResearchStateCopyWithImpl<$Res>
    implements _$TravelResearchStateCopyWith<$Res> {
  __$TravelResearchStateCopyWithImpl(
      _TravelResearchState _value, $Res Function(_TravelResearchState) _then)
      : super(_value, (v) => _then(v as _TravelResearchState));

  @override
  _TravelResearchState get _value => super._value as _TravelResearchState;

  @override
  $Res call({
    Object? research = freezed,
    Object? researchIndex = freezed,
  }) {
    return _then(_TravelResearchState(
      research: research == freezed
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as TravelQuestionResearch?,
      researchIndex: researchIndex == freezed
          ? _value.researchIndex
          : researchIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_TravelResearchState implements _TravelResearchState {
  const _$_TravelResearchState(
      {required this.research, required this.researchIndex});

  @override
  final TravelQuestionResearch? research;
  @override
  final int researchIndex;

  @override
  String toString() {
    return 'TravelResearchState(research: $research, researchIndex: $researchIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelResearchState &&
            (identical(other.research, research) ||
                const DeepCollectionEquality()
                    .equals(other.research, research)) &&
            (identical(other.researchIndex, researchIndex) ||
                const DeepCollectionEquality()
                    .equals(other.researchIndex, researchIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(research) ^
      const DeepCollectionEquality().hash(researchIndex);

  @JsonKey(ignore: true)
  @override
  _$TravelResearchStateCopyWith<_TravelResearchState> get copyWith =>
      __$TravelResearchStateCopyWithImpl<_TravelResearchState>(
          this, _$identity);
}

abstract class _TravelResearchState implements TravelResearchState {
  const factory _TravelResearchState(
      {required TravelQuestionResearch? research,
      required int researchIndex}) = _$_TravelResearchState;

  @override
  TravelQuestionResearch? get research => throw _privateConstructorUsedError;
  @override
  int get researchIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelResearchStateCopyWith<_TravelResearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
