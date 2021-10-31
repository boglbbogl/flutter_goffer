// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_plan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreatePlanEventTearOff {
  const _$CreatePlanEventTearOff();

  _Started started() {
    return const _Started();
  }

  _DateSelected dateSelected({required DateTime start, required DateTime end}) {
    return _DateSelected(
      start: start,
      end: end,
    );
  }

  _StartTimeSelected startTimeSelected({required String start}) {
    return _StartTimeSelected(
      start: start,
    );
  }

  _EndTimeSelected endTimeSelected({required String end}) {
    return _EndTimeSelected(
      end: end,
    );
  }
}

/// @nodoc
const $CreatePlanEvent = _$CreatePlanEventTearOff();

/// @nodoc
mixin _$CreatePlanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime start, DateTime end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String end) endTimeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime start, DateTime end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String end)? endTimeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlanEventCopyWith<$Res> {
  factory $CreatePlanEventCopyWith(
          CreatePlanEvent value, $Res Function(CreatePlanEvent) then) =
      _$CreatePlanEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreatePlanEventCopyWithImpl<$Res>
    implements $CreatePlanEventCopyWith<$Res> {
  _$CreatePlanEventCopyWithImpl(this._value, this._then);

  final CreatePlanEvent _value;
  // ignore: unused_field
  final $Res Function(CreatePlanEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CreatePlanEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CreatePlanEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime start, DateTime end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String end) endTimeSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime start, DateTime end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String end)? endTimeSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreatePlanEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$DateSelectedCopyWith<$Res> {
  factory _$DateSelectedCopyWith(
          _DateSelected value, $Res Function(_DateSelected) then) =
      __$DateSelectedCopyWithImpl<$Res>;
  $Res call({DateTime start, DateTime end});
}

/// @nodoc
class __$DateSelectedCopyWithImpl<$Res>
    extends _$CreatePlanEventCopyWithImpl<$Res>
    implements _$DateSelectedCopyWith<$Res> {
  __$DateSelectedCopyWithImpl(
      _DateSelected _value, $Res Function(_DateSelected) _then)
      : super(_value, (v) => _then(v as _DateSelected));

  @override
  _DateSelected get _value => super._value as _DateSelected;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_DateSelected(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateSelected implements _DateSelected {
  const _$_DateSelected({required this.start, required this.end});

  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'CreatePlanEvent.dateSelected(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateSelected &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end);

  @JsonKey(ignore: true)
  @override
  _$DateSelectedCopyWith<_DateSelected> get copyWith =>
      __$DateSelectedCopyWithImpl<_DateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime start, DateTime end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String end) endTimeSelected,
  }) {
    return dateSelected(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime start, DateTime end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String end)? endTimeSelected,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(start, end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements CreatePlanEvent {
  const factory _DateSelected(
      {required DateTime start, required DateTime end}) = _$_DateSelected;

  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DateSelectedCopyWith<_DateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartTimeSelectedCopyWith<$Res> {
  factory _$StartTimeSelectedCopyWith(
          _StartTimeSelected value, $Res Function(_StartTimeSelected) then) =
      __$StartTimeSelectedCopyWithImpl<$Res>;
  $Res call({String start});
}

/// @nodoc
class __$StartTimeSelectedCopyWithImpl<$Res>
    extends _$CreatePlanEventCopyWithImpl<$Res>
    implements _$StartTimeSelectedCopyWith<$Res> {
  __$StartTimeSelectedCopyWithImpl(
      _StartTimeSelected _value, $Res Function(_StartTimeSelected) _then)
      : super(_value, (v) => _then(v as _StartTimeSelected));

  @override
  _StartTimeSelected get _value => super._value as _StartTimeSelected;

  @override
  $Res call({
    Object? start = freezed,
  }) {
    return _then(_StartTimeSelected(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartTimeSelected implements _StartTimeSelected {
  const _$_StartTimeSelected({required this.start});

  @override
  final String start;

  @override
  String toString() {
    return 'CreatePlanEvent.startTimeSelected(start: $start)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartTimeSelected &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(start);

  @JsonKey(ignore: true)
  @override
  _$StartTimeSelectedCopyWith<_StartTimeSelected> get copyWith =>
      __$StartTimeSelectedCopyWithImpl<_StartTimeSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime start, DateTime end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String end) endTimeSelected,
  }) {
    return startTimeSelected(start);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime start, DateTime end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String end)? endTimeSelected,
    required TResult orElse(),
  }) {
    if (startTimeSelected != null) {
      return startTimeSelected(start);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
  }) {
    return startTimeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    required TResult orElse(),
  }) {
    if (startTimeSelected != null) {
      return startTimeSelected(this);
    }
    return orElse();
  }
}

abstract class _StartTimeSelected implements CreatePlanEvent {
  const factory _StartTimeSelected({required String start}) =
      _$_StartTimeSelected;

  String get start => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartTimeSelectedCopyWith<_StartTimeSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EndTimeSelectedCopyWith<$Res> {
  factory _$EndTimeSelectedCopyWith(
          _EndTimeSelected value, $Res Function(_EndTimeSelected) then) =
      __$EndTimeSelectedCopyWithImpl<$Res>;
  $Res call({String end});
}

/// @nodoc
class __$EndTimeSelectedCopyWithImpl<$Res>
    extends _$CreatePlanEventCopyWithImpl<$Res>
    implements _$EndTimeSelectedCopyWith<$Res> {
  __$EndTimeSelectedCopyWithImpl(
      _EndTimeSelected _value, $Res Function(_EndTimeSelected) _then)
      : super(_value, (v) => _then(v as _EndTimeSelected));

  @override
  _EndTimeSelected get _value => super._value as _EndTimeSelected;

  @override
  $Res call({
    Object? end = freezed,
  }) {
    return _then(_EndTimeSelected(
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EndTimeSelected implements _EndTimeSelected {
  const _$_EndTimeSelected({required this.end});

  @override
  final String end;

  @override
  String toString() {
    return 'CreatePlanEvent.endTimeSelected(end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndTimeSelected &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(end);

  @JsonKey(ignore: true)
  @override
  _$EndTimeSelectedCopyWith<_EndTimeSelected> get copyWith =>
      __$EndTimeSelectedCopyWithImpl<_EndTimeSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(DateTime start, DateTime end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String end) endTimeSelected,
  }) {
    return endTimeSelected(end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(DateTime start, DateTime end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String end)? endTimeSelected,
    required TResult orElse(),
  }) {
    if (endTimeSelected != null) {
      return endTimeSelected(end);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
  }) {
    return endTimeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    required TResult orElse(),
  }) {
    if (endTimeSelected != null) {
      return endTimeSelected(this);
    }
    return orElse();
  }
}

abstract class _EndTimeSelected implements CreatePlanEvent {
  const factory _EndTimeSelected({required String end}) = _$_EndTimeSelected;

  String get end => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EndTimeSelectedCopyWith<_EndTimeSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreatePlanStateTearOff {
  const _$CreatePlanStateTearOff();

  _CreatePlanState call({required bool isLoading, required CreatePlan? plan}) {
    return _CreatePlanState(
      isLoading: isLoading,
      plan: plan,
    );
  }
}

/// @nodoc
const $CreatePlanState = _$CreatePlanStateTearOff();

/// @nodoc
mixin _$CreatePlanState {
  bool get isLoading => throw _privateConstructorUsedError;
  CreatePlan? get plan => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePlanStateCopyWith<CreatePlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlanStateCopyWith<$Res> {
  factory $CreatePlanStateCopyWith(
          CreatePlanState value, $Res Function(CreatePlanState) then) =
      _$CreatePlanStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, CreatePlan? plan});

  $CreatePlanCopyWith<$Res>? get plan;
}

/// @nodoc
class _$CreatePlanStateCopyWithImpl<$Res>
    implements $CreatePlanStateCopyWith<$Res> {
  _$CreatePlanStateCopyWithImpl(this._value, this._then);

  final CreatePlanState _value;
  // ignore: unused_field
  final $Res Function(CreatePlanState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? plan = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      plan: plan == freezed
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as CreatePlan?,
    ));
  }

  @override
  $CreatePlanCopyWith<$Res>? get plan {
    if (_value.plan == null) {
      return null;
    }

    return $CreatePlanCopyWith<$Res>(_value.plan!, (value) {
      return _then(_value.copyWith(plan: value));
    });
  }
}

/// @nodoc
abstract class _$CreatePlanStateCopyWith<$Res>
    implements $CreatePlanStateCopyWith<$Res> {
  factory _$CreatePlanStateCopyWith(
          _CreatePlanState value, $Res Function(_CreatePlanState) then) =
      __$CreatePlanStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, CreatePlan? plan});

  @override
  $CreatePlanCopyWith<$Res>? get plan;
}

/// @nodoc
class __$CreatePlanStateCopyWithImpl<$Res>
    extends _$CreatePlanStateCopyWithImpl<$Res>
    implements _$CreatePlanStateCopyWith<$Res> {
  __$CreatePlanStateCopyWithImpl(
      _CreatePlanState _value, $Res Function(_CreatePlanState) _then)
      : super(_value, (v) => _then(v as _CreatePlanState));

  @override
  _CreatePlanState get _value => super._value as _CreatePlanState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? plan = freezed,
  }) {
    return _then(_CreatePlanState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      plan: plan == freezed
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as CreatePlan?,
    ));
  }
}

/// @nodoc

class _$_CreatePlanState implements _CreatePlanState {
  _$_CreatePlanState({required this.isLoading, required this.plan});

  @override
  final bool isLoading;
  @override
  final CreatePlan? plan;

  @override
  String toString() {
    return 'CreatePlanState(isLoading: $isLoading, plan: $plan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreatePlanState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.plan, plan) ||
                const DeepCollectionEquality().equals(other.plan, plan)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(plan);

  @JsonKey(ignore: true)
  @override
  _$CreatePlanStateCopyWith<_CreatePlanState> get copyWith =>
      __$CreatePlanStateCopyWithImpl<_CreatePlanState>(this, _$identity);
}

abstract class _CreatePlanState implements CreatePlanState {
  factory _CreatePlanState(
      {required bool isLoading,
      required CreatePlan? plan}) = _$_CreatePlanState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  CreatePlan? get plan => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreatePlanStateCopyWith<_CreatePlanState> get copyWith =>
      throw _privateConstructorUsedError;
}
