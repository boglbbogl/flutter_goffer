// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'travel_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TravelCreateEventTearOff {
  const _$TravelCreateEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Submitted submitted() {
    return const _Submitted();
  }

  _DateSelected dateSelected({required String start, required String end}) {
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

  _StartDestinationSelected startDestinationSelected(
      {required String x,
      required String y,
      required String id,
      required String destination}) {
    return _StartDestinationSelected(
      x: x,
      y: y,
      id: id,
      destination: destination,
    );
  }

  _EndDestinationSelected endDestinationSelected(
      {required String x,
      required String y,
      required String id,
      required String destination}) {
    return _EndDestinationSelected(
      x: x,
      y: y,
      id: id,
      destination: destination,
    );
  }

  _LayoverSelected layoverSelected({required TravelResearch layover}) {
    return _LayoverSelected(
      layover: layover,
    );
  }

  _EndTimeSelected endTimeSelected({required String end}) {
    return _EndTimeSelected(
      end: end,
    );
  }

  _DestinationToggleSwitched destinationToggleSwitched() {
    return const _DestinationToggleSwitched();
  }

  _AdressBottomSearched addressBottomSearched({required bool value}) {
    return _AdressBottomSearched(
      value: value,
    );
  }

  _LayoverAddressBottomSearched layoverAddressBottomSearched(
      {required bool value}) {
    return _LayoverAddressBottomSearched(
      value: value,
    );
  }
}

/// @nodoc
const $TravelCreateEvent = _$TravelCreateEventTearOff();

/// @nodoc
mixin _$TravelCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCreateEventCopyWith<$Res> {
  factory $TravelCreateEventCopyWith(
          TravelCreateEvent value, $Res Function(TravelCreateEvent) then) =
      _$TravelCreateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TravelCreateEventCopyWithImpl<$Res>
    implements $TravelCreateEventCopyWith<$Res> {
  _$TravelCreateEventCopyWithImpl(this._value, this._then);

  final TravelCreateEvent _value;
  // ignore: unused_field
  final $Res Function(TravelCreateEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$TravelCreateEventCopyWithImpl<$Res>
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
    return 'TravelCreateEvent.started()';
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
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
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
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TravelCreateEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SubmittedCopyWith<$Res> {
  factory _$SubmittedCopyWith(
          _Submitted value, $Res Function(_Submitted) then) =
      __$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmittedCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res>
    implements _$SubmittedCopyWith<$Res> {
  __$SubmittedCopyWithImpl(_Submitted _value, $Res Function(_Submitted) _then)
      : super(_value, (v) => _then(v as _Submitted));

  @override
  _Submitted get _value => super._value as _Submitted;
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'TravelCreateEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements TravelCreateEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
abstract class _$DateSelectedCopyWith<$Res> {
  factory _$DateSelectedCopyWith(
          _DateSelected value, $Res Function(_DateSelected) then) =
      __$DateSelectedCopyWithImpl<$Res>;
  $Res call({String start, String end});
}

/// @nodoc
class __$DateSelectedCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res>
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
              as String,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DateSelected implements _DateSelected {
  const _$_DateSelected({required this.start, required this.end});

  @override
  final String start;
  @override
  final String end;

  @override
  String toString() {
    return 'TravelCreateEvent.dateSelected(start: $start, end: $end)';
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
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return dateSelected(start, end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
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
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements TravelCreateEvent {
  const factory _DateSelected({required String start, required String end}) =
      _$_DateSelected;

  String get start => throw _privateConstructorUsedError;
  String get end => throw _privateConstructorUsedError;
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
    extends _$TravelCreateEventCopyWithImpl<$Res>
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
    return 'TravelCreateEvent.startTimeSelected(start: $start)';
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
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return startTimeSelected(start);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
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
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return startTimeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (startTimeSelected != null) {
      return startTimeSelected(this);
    }
    return orElse();
  }
}

abstract class _StartTimeSelected implements TravelCreateEvent {
  const factory _StartTimeSelected({required String start}) =
      _$_StartTimeSelected;

  String get start => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartTimeSelectedCopyWith<_StartTimeSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartDestinationSelectedCopyWith<$Res> {
  factory _$StartDestinationSelectedCopyWith(_StartDestinationSelected value,
          $Res Function(_StartDestinationSelected) then) =
      __$StartDestinationSelectedCopyWithImpl<$Res>;
  $Res call({String x, String y, String id, String destination});
}

/// @nodoc
class __$StartDestinationSelectedCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res>
    implements _$StartDestinationSelectedCopyWith<$Res> {
  __$StartDestinationSelectedCopyWithImpl(_StartDestinationSelected _value,
      $Res Function(_StartDestinationSelected) _then)
      : super(_value, (v) => _then(v as _StartDestinationSelected));

  @override
  _StartDestinationSelected get _value =>
      super._value as _StartDestinationSelected;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? id = freezed,
    Object? destination = freezed,
  }) {
    return _then(_StartDestinationSelected(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartDestinationSelected implements _StartDestinationSelected {
  const _$_StartDestinationSelected(
      {required this.x,
      required this.y,
      required this.id,
      required this.destination});

  @override
  final String x;
  @override
  final String y;
  @override
  final String id;
  @override
  final String destination;

  @override
  String toString() {
    return 'TravelCreateEvent.startDestinationSelected(x: $x, y: $y, id: $id, destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartDestinationSelected &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(destination);

  @JsonKey(ignore: true)
  @override
  _$StartDestinationSelectedCopyWith<_StartDestinationSelected> get copyWith =>
      __$StartDestinationSelectedCopyWithImpl<_StartDestinationSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return startDestinationSelected(x, y, id, destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (startDestinationSelected != null) {
      return startDestinationSelected(x, y, id, destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return startDestinationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (startDestinationSelected != null) {
      return startDestinationSelected(this);
    }
    return orElse();
  }
}

abstract class _StartDestinationSelected implements TravelCreateEvent {
  const factory _StartDestinationSelected(
      {required String x,
      required String y,
      required String id,
      required String destination}) = _$_StartDestinationSelected;

  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartDestinationSelectedCopyWith<_StartDestinationSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EndDestinationSelectedCopyWith<$Res> {
  factory _$EndDestinationSelectedCopyWith(_EndDestinationSelected value,
          $Res Function(_EndDestinationSelected) then) =
      __$EndDestinationSelectedCopyWithImpl<$Res>;
  $Res call({String x, String y, String id, String destination});
}

/// @nodoc
class __$EndDestinationSelectedCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res>
    implements _$EndDestinationSelectedCopyWith<$Res> {
  __$EndDestinationSelectedCopyWithImpl(_EndDestinationSelected _value,
      $Res Function(_EndDestinationSelected) _then)
      : super(_value, (v) => _then(v as _EndDestinationSelected));

  @override
  _EndDestinationSelected get _value => super._value as _EndDestinationSelected;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
    Object? id = freezed,
    Object? destination = freezed,
  }) {
    return _then(_EndDestinationSelected(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      destination: destination == freezed
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EndDestinationSelected implements _EndDestinationSelected {
  const _$_EndDestinationSelected(
      {required this.x,
      required this.y,
      required this.id,
      required this.destination});

  @override
  final String x;
  @override
  final String y;
  @override
  final String id;
  @override
  final String destination;

  @override
  String toString() {
    return 'TravelCreateEvent.endDestinationSelected(x: $x, y: $y, id: $id, destination: $destination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndDestinationSelected &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.destination, destination) ||
                const DeepCollectionEquality()
                    .equals(other.destination, destination)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(destination);

  @JsonKey(ignore: true)
  @override
  _$EndDestinationSelectedCopyWith<_EndDestinationSelected> get copyWith =>
      __$EndDestinationSelectedCopyWithImpl<_EndDestinationSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return endDestinationSelected(x, y, id, destination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (endDestinationSelected != null) {
      return endDestinationSelected(x, y, id, destination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return endDestinationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (endDestinationSelected != null) {
      return endDestinationSelected(this);
    }
    return orElse();
  }
}

abstract class _EndDestinationSelected implements TravelCreateEvent {
  const factory _EndDestinationSelected(
      {required String x,
      required String y,
      required String id,
      required String destination}) = _$_EndDestinationSelected;

  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get destination => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EndDestinationSelectedCopyWith<_EndDestinationSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LayoverSelectedCopyWith<$Res> {
  factory _$LayoverSelectedCopyWith(
          _LayoverSelected value, $Res Function(_LayoverSelected) then) =
      __$LayoverSelectedCopyWithImpl<$Res>;
  $Res call({TravelResearch layover});

  $TravelResearchCopyWith<$Res> get layover;
}

/// @nodoc
class __$LayoverSelectedCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res>
    implements _$LayoverSelectedCopyWith<$Res> {
  __$LayoverSelectedCopyWithImpl(
      _LayoverSelected _value, $Res Function(_LayoverSelected) _then)
      : super(_value, (v) => _then(v as _LayoverSelected));

  @override
  _LayoverSelected get _value => super._value as _LayoverSelected;

  @override
  $Res call({
    Object? layover = freezed,
  }) {
    return _then(_LayoverSelected(
      layover: layover == freezed
          ? _value.layover
          : layover // ignore: cast_nullable_to_non_nullable
              as TravelResearch,
    ));
  }

  @override
  $TravelResearchCopyWith<$Res> get layover {
    return $TravelResearchCopyWith<$Res>(_value.layover, (value) {
      return _then(_value.copyWith(layover: value));
    });
  }
}

/// @nodoc

class _$_LayoverSelected implements _LayoverSelected {
  const _$_LayoverSelected({required this.layover});

  @override
  final TravelResearch layover;

  @override
  String toString() {
    return 'TravelCreateEvent.layoverSelected(layover: $layover)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LayoverSelected &&
            (identical(other.layover, layover) ||
                const DeepCollectionEquality().equals(other.layover, layover)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(layover);

  @JsonKey(ignore: true)
  @override
  _$LayoverSelectedCopyWith<_LayoverSelected> get copyWith =>
      __$LayoverSelectedCopyWithImpl<_LayoverSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return layoverSelected(layover);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (layoverSelected != null) {
      return layoverSelected(layover);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return layoverSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (layoverSelected != null) {
      return layoverSelected(this);
    }
    return orElse();
  }
}

abstract class _LayoverSelected implements TravelCreateEvent {
  const factory _LayoverSelected({required TravelResearch layover}) =
      _$_LayoverSelected;

  TravelResearch get layover => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LayoverSelectedCopyWith<_LayoverSelected> get copyWith =>
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
    extends _$TravelCreateEventCopyWithImpl<$Res>
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
    return 'TravelCreateEvent.endTimeSelected(end: $end)';
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
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return endTimeSelected(end);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
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
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return endTimeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (endTimeSelected != null) {
      return endTimeSelected(this);
    }
    return orElse();
  }
}

abstract class _EndTimeSelected implements TravelCreateEvent {
  const factory _EndTimeSelected({required String end}) = _$_EndTimeSelected;

  String get end => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EndTimeSelectedCopyWith<_EndTimeSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DestinationToggleSwitchedCopyWith<$Res> {
  factory _$DestinationToggleSwitchedCopyWith(_DestinationToggleSwitched value,
          $Res Function(_DestinationToggleSwitched) then) =
      __$DestinationToggleSwitchedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DestinationToggleSwitchedCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res>
    implements _$DestinationToggleSwitchedCopyWith<$Res> {
  __$DestinationToggleSwitchedCopyWithImpl(_DestinationToggleSwitched _value,
      $Res Function(_DestinationToggleSwitched) _then)
      : super(_value, (v) => _then(v as _DestinationToggleSwitched));

  @override
  _DestinationToggleSwitched get _value =>
      super._value as _DestinationToggleSwitched;
}

/// @nodoc

class _$_DestinationToggleSwitched implements _DestinationToggleSwitched {
  const _$_DestinationToggleSwitched();

  @override
  String toString() {
    return 'TravelCreateEvent.destinationToggleSwitched()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DestinationToggleSwitched);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return destinationToggleSwitched();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (destinationToggleSwitched != null) {
      return destinationToggleSwitched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return destinationToggleSwitched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (destinationToggleSwitched != null) {
      return destinationToggleSwitched(this);
    }
    return orElse();
  }
}

abstract class _DestinationToggleSwitched implements TravelCreateEvent {
  const factory _DestinationToggleSwitched() = _$_DestinationToggleSwitched;
}

/// @nodoc
abstract class _$AdressBottomSearchedCopyWith<$Res> {
  factory _$AdressBottomSearchedCopyWith(_AdressBottomSearched value,
          $Res Function(_AdressBottomSearched) then) =
      __$AdressBottomSearchedCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$AdressBottomSearchedCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res>
    implements _$AdressBottomSearchedCopyWith<$Res> {
  __$AdressBottomSearchedCopyWithImpl(
      _AdressBottomSearched _value, $Res Function(_AdressBottomSearched) _then)
      : super(_value, (v) => _then(v as _AdressBottomSearched));

  @override
  _AdressBottomSearched get _value => super._value as _AdressBottomSearched;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_AdressBottomSearched(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AdressBottomSearched implements _AdressBottomSearched {
  const _$_AdressBottomSearched({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'TravelCreateEvent.addressBottomSearched(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdressBottomSearched &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$AdressBottomSearchedCopyWith<_AdressBottomSearched> get copyWith =>
      __$AdressBottomSearchedCopyWithImpl<_AdressBottomSearched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return addressBottomSearched(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (addressBottomSearched != null) {
      return addressBottomSearched(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return addressBottomSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (addressBottomSearched != null) {
      return addressBottomSearched(this);
    }
    return orElse();
  }
}

abstract class _AdressBottomSearched implements TravelCreateEvent {
  const factory _AdressBottomSearched({required bool value}) =
      _$_AdressBottomSearched;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AdressBottomSearchedCopyWith<_AdressBottomSearched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LayoverAddressBottomSearchedCopyWith<$Res> {
  factory _$LayoverAddressBottomSearchedCopyWith(
          _LayoverAddressBottomSearched value,
          $Res Function(_LayoverAddressBottomSearched) then) =
      __$LayoverAddressBottomSearchedCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class __$LayoverAddressBottomSearchedCopyWithImpl<$Res>
    extends _$TravelCreateEventCopyWithImpl<$Res>
    implements _$LayoverAddressBottomSearchedCopyWith<$Res> {
  __$LayoverAddressBottomSearchedCopyWithImpl(
      _LayoverAddressBottomSearched _value,
      $Res Function(_LayoverAddressBottomSearched) _then)
      : super(_value, (v) => _then(v as _LayoverAddressBottomSearched));

  @override
  _LayoverAddressBottomSearched get _value =>
      super._value as _LayoverAddressBottomSearched;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_LayoverAddressBottomSearched(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LayoverAddressBottomSearched implements _LayoverAddressBottomSearched {
  const _$_LayoverAddressBottomSearched({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'TravelCreateEvent.layoverAddressBottomSearched(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LayoverAddressBottomSearched &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$LayoverAddressBottomSearchedCopyWith<_LayoverAddressBottomSearched>
      get copyWith => __$LayoverAddressBottomSearchedCopyWithImpl<
          _LayoverAddressBottomSearched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() submitted,
    required TResult Function(String start, String end) dateSelected,
    required TResult Function(String start) startTimeSelected,
    required TResult Function(String x, String y, String id, String destination)
        startDestinationSelected,
    required TResult Function(String x, String y, String id, String destination)
        endDestinationSelected,
    required TResult Function(TravelResearch layover) layoverSelected,
    required TResult Function(String end) endTimeSelected,
    required TResult Function() destinationToggleSwitched,
    required TResult Function(bool value) addressBottomSearched,
    required TResult Function(bool value) layoverAddressBottomSearched,
  }) {
    return layoverAddressBottomSearched(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? submitted,
    TResult Function(String start, String end)? dateSelected,
    TResult Function(String start)? startTimeSelected,
    TResult Function(String x, String y, String id, String destination)?
        startDestinationSelected,
    TResult Function(String x, String y, String id, String destination)?
        endDestinationSelected,
    TResult Function(TravelResearch layover)? layoverSelected,
    TResult Function(String end)? endTimeSelected,
    TResult Function()? destinationToggleSwitched,
    TResult Function(bool value)? addressBottomSearched,
    TResult Function(bool value)? layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (layoverAddressBottomSearched != null) {
      return layoverAddressBottomSearched(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_StartTimeSelected value) startTimeSelected,
    required TResult Function(_StartDestinationSelected value)
        startDestinationSelected,
    required TResult Function(_EndDestinationSelected value)
        endDestinationSelected,
    required TResult Function(_LayoverSelected value) layoverSelected,
    required TResult Function(_EndTimeSelected value) endTimeSelected,
    required TResult Function(_DestinationToggleSwitched value)
        destinationToggleSwitched,
    required TResult Function(_AdressBottomSearched value)
        addressBottomSearched,
    required TResult Function(_LayoverAddressBottomSearched value)
        layoverAddressBottomSearched,
  }) {
    return layoverAddressBottomSearched(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_StartTimeSelected value)? startTimeSelected,
    TResult Function(_StartDestinationSelected value)? startDestinationSelected,
    TResult Function(_EndDestinationSelected value)? endDestinationSelected,
    TResult Function(_LayoverSelected value)? layoverSelected,
    TResult Function(_EndTimeSelected value)? endTimeSelected,
    TResult Function(_DestinationToggleSwitched value)?
        destinationToggleSwitched,
    TResult Function(_AdressBottomSearched value)? addressBottomSearched,
    TResult Function(_LayoverAddressBottomSearched value)?
        layoverAddressBottomSearched,
    required TResult orElse(),
  }) {
    if (layoverAddressBottomSearched != null) {
      return layoverAddressBottomSearched(this);
    }
    return orElse();
  }
}

abstract class _LayoverAddressBottomSearched implements TravelCreateEvent {
  const factory _LayoverAddressBottomSearched({required bool value}) =
      _$_LayoverAddressBottomSearched;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LayoverAddressBottomSearchedCopyWith<_LayoverAddressBottomSearched>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TravelCreateStateTearOff {
  const _$TravelCreateStateTearOff();

  _TravelCreateState call(
      {required bool isLoading,
      required Travel? travel,
      required TravelResearch? startTravel,
      required TravelResearch? endTravel,
      required List<TravelResearch> wayTravel,
      required bool isColorChanged,
      required bool isAddressSearchBar,
      required bool isLayoverAddressBar,
      required String startDestination,
      required String endDestination}) {
    return _TravelCreateState(
      isLoading: isLoading,
      travel: travel,
      startTravel: startTravel,
      endTravel: endTravel,
      wayTravel: wayTravel,
      isColorChanged: isColorChanged,
      isAddressSearchBar: isAddressSearchBar,
      isLayoverAddressBar: isLayoverAddressBar,
      startDestination: startDestination,
      endDestination: endDestination,
    );
  }
}

/// @nodoc
const $TravelCreateState = _$TravelCreateStateTearOff();

/// @nodoc
mixin _$TravelCreateState {
  bool get isLoading => throw _privateConstructorUsedError;
  Travel? get travel => throw _privateConstructorUsedError;
  TravelResearch? get startTravel => throw _privateConstructorUsedError;
  TravelResearch? get endTravel => throw _privateConstructorUsedError;
  List<TravelResearch> get wayTravel => throw _privateConstructorUsedError;
  bool get isColorChanged => throw _privateConstructorUsedError;
  bool get isAddressSearchBar => throw _privateConstructorUsedError;
  bool get isLayoverAddressBar => throw _privateConstructorUsedError;
  String get startDestination => throw _privateConstructorUsedError;
  String get endDestination => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelCreateStateCopyWith<TravelCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCreateStateCopyWith<$Res> {
  factory $TravelCreateStateCopyWith(
          TravelCreateState value, $Res Function(TravelCreateState) then) =
      _$TravelCreateStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Travel? travel,
      TravelResearch? startTravel,
      TravelResearch? endTravel,
      List<TravelResearch> wayTravel,
      bool isColorChanged,
      bool isAddressSearchBar,
      bool isLayoverAddressBar,
      String startDestination,
      String endDestination});

  $TravelCopyWith<$Res>? get travel;
  $TravelResearchCopyWith<$Res>? get startTravel;
  $TravelResearchCopyWith<$Res>? get endTravel;
}

/// @nodoc
class _$TravelCreateStateCopyWithImpl<$Res>
    implements $TravelCreateStateCopyWith<$Res> {
  _$TravelCreateStateCopyWithImpl(this._value, this._then);

  final TravelCreateState _value;
  // ignore: unused_field
  final $Res Function(TravelCreateState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? travel = freezed,
    Object? startTravel = freezed,
    Object? endTravel = freezed,
    Object? wayTravel = freezed,
    Object? isColorChanged = freezed,
    Object? isAddressSearchBar = freezed,
    Object? isLayoverAddressBar = freezed,
    Object? startDestination = freezed,
    Object? endDestination = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      travel: travel == freezed
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel?,
      startTravel: startTravel == freezed
          ? _value.startTravel
          : startTravel // ignore: cast_nullable_to_non_nullable
              as TravelResearch?,
      endTravel: endTravel == freezed
          ? _value.endTravel
          : endTravel // ignore: cast_nullable_to_non_nullable
              as TravelResearch?,
      wayTravel: wayTravel == freezed
          ? _value.wayTravel
          : wayTravel // ignore: cast_nullable_to_non_nullable
              as List<TravelResearch>,
      isColorChanged: isColorChanged == freezed
          ? _value.isColorChanged
          : isColorChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddressSearchBar: isAddressSearchBar == freezed
          ? _value.isAddressSearchBar
          : isAddressSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      isLayoverAddressBar: isLayoverAddressBar == freezed
          ? _value.isLayoverAddressBar
          : isLayoverAddressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      startDestination: startDestination == freezed
          ? _value.startDestination
          : startDestination // ignore: cast_nullable_to_non_nullable
              as String,
      endDestination: endDestination == freezed
          ? _value.endDestination
          : endDestination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $TravelCopyWith<$Res>? get travel {
    if (_value.travel == null) {
      return null;
    }

    return $TravelCopyWith<$Res>(_value.travel!, (value) {
      return _then(_value.copyWith(travel: value));
    });
  }

  @override
  $TravelResearchCopyWith<$Res>? get startTravel {
    if (_value.startTravel == null) {
      return null;
    }

    return $TravelResearchCopyWith<$Res>(_value.startTravel!, (value) {
      return _then(_value.copyWith(startTravel: value));
    });
  }

  @override
  $TravelResearchCopyWith<$Res>? get endTravel {
    if (_value.endTravel == null) {
      return null;
    }

    return $TravelResearchCopyWith<$Res>(_value.endTravel!, (value) {
      return _then(_value.copyWith(endTravel: value));
    });
  }
}

/// @nodoc
abstract class _$TravelCreateStateCopyWith<$Res>
    implements $TravelCreateStateCopyWith<$Res> {
  factory _$TravelCreateStateCopyWith(
          _TravelCreateState value, $Res Function(_TravelCreateState) then) =
      __$TravelCreateStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Travel? travel,
      TravelResearch? startTravel,
      TravelResearch? endTravel,
      List<TravelResearch> wayTravel,
      bool isColorChanged,
      bool isAddressSearchBar,
      bool isLayoverAddressBar,
      String startDestination,
      String endDestination});

  @override
  $TravelCopyWith<$Res>? get travel;
  @override
  $TravelResearchCopyWith<$Res>? get startTravel;
  @override
  $TravelResearchCopyWith<$Res>? get endTravel;
}

/// @nodoc
class __$TravelCreateStateCopyWithImpl<$Res>
    extends _$TravelCreateStateCopyWithImpl<$Res>
    implements _$TravelCreateStateCopyWith<$Res> {
  __$TravelCreateStateCopyWithImpl(
      _TravelCreateState _value, $Res Function(_TravelCreateState) _then)
      : super(_value, (v) => _then(v as _TravelCreateState));

  @override
  _TravelCreateState get _value => super._value as _TravelCreateState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? travel = freezed,
    Object? startTravel = freezed,
    Object? endTravel = freezed,
    Object? wayTravel = freezed,
    Object? isColorChanged = freezed,
    Object? isAddressSearchBar = freezed,
    Object? isLayoverAddressBar = freezed,
    Object? startDestination = freezed,
    Object? endDestination = freezed,
  }) {
    return _then(_TravelCreateState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      travel: travel == freezed
          ? _value.travel
          : travel // ignore: cast_nullable_to_non_nullable
              as Travel?,
      startTravel: startTravel == freezed
          ? _value.startTravel
          : startTravel // ignore: cast_nullable_to_non_nullable
              as TravelResearch?,
      endTravel: endTravel == freezed
          ? _value.endTravel
          : endTravel // ignore: cast_nullable_to_non_nullable
              as TravelResearch?,
      wayTravel: wayTravel == freezed
          ? _value.wayTravel
          : wayTravel // ignore: cast_nullable_to_non_nullable
              as List<TravelResearch>,
      isColorChanged: isColorChanged == freezed
          ? _value.isColorChanged
          : isColorChanged // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddressSearchBar: isAddressSearchBar == freezed
          ? _value.isAddressSearchBar
          : isAddressSearchBar // ignore: cast_nullable_to_non_nullable
              as bool,
      isLayoverAddressBar: isLayoverAddressBar == freezed
          ? _value.isLayoverAddressBar
          : isLayoverAddressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      startDestination: startDestination == freezed
          ? _value.startDestination
          : startDestination // ignore: cast_nullable_to_non_nullable
              as String,
      endDestination: endDestination == freezed
          ? _value.endDestination
          : endDestination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TravelCreateState implements _TravelCreateState {
  _$_TravelCreateState(
      {required this.isLoading,
      required this.travel,
      required this.startTravel,
      required this.endTravel,
      required this.wayTravel,
      required this.isColorChanged,
      required this.isAddressSearchBar,
      required this.isLayoverAddressBar,
      required this.startDestination,
      required this.endDestination});

  @override
  final bool isLoading;
  @override
  final Travel? travel;
  @override
  final TravelResearch? startTravel;
  @override
  final TravelResearch? endTravel;
  @override
  final List<TravelResearch> wayTravel;
  @override
  final bool isColorChanged;
  @override
  final bool isAddressSearchBar;
  @override
  final bool isLayoverAddressBar;
  @override
  final String startDestination;
  @override
  final String endDestination;

  @override
  String toString() {
    return 'TravelCreateState(isLoading: $isLoading, travel: $travel, startTravel: $startTravel, endTravel: $endTravel, wayTravel: $wayTravel, isColorChanged: $isColorChanged, isAddressSearchBar: $isAddressSearchBar, isLayoverAddressBar: $isLayoverAddressBar, startDestination: $startDestination, endDestination: $endDestination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelCreateState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.travel, travel) ||
                const DeepCollectionEquality().equals(other.travel, travel)) &&
            (identical(other.startTravel, startTravel) ||
                const DeepCollectionEquality()
                    .equals(other.startTravel, startTravel)) &&
            (identical(other.endTravel, endTravel) ||
                const DeepCollectionEquality()
                    .equals(other.endTravel, endTravel)) &&
            (identical(other.wayTravel, wayTravel) ||
                const DeepCollectionEquality()
                    .equals(other.wayTravel, wayTravel)) &&
            (identical(other.isColorChanged, isColorChanged) ||
                const DeepCollectionEquality()
                    .equals(other.isColorChanged, isColorChanged)) &&
            (identical(other.isAddressSearchBar, isAddressSearchBar) ||
                const DeepCollectionEquality()
                    .equals(other.isAddressSearchBar, isAddressSearchBar)) &&
            (identical(other.isLayoverAddressBar, isLayoverAddressBar) ||
                const DeepCollectionEquality()
                    .equals(other.isLayoverAddressBar, isLayoverAddressBar)) &&
            (identical(other.startDestination, startDestination) ||
                const DeepCollectionEquality()
                    .equals(other.startDestination, startDestination)) &&
            (identical(other.endDestination, endDestination) ||
                const DeepCollectionEquality()
                    .equals(other.endDestination, endDestination)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(travel) ^
      const DeepCollectionEquality().hash(startTravel) ^
      const DeepCollectionEquality().hash(endTravel) ^
      const DeepCollectionEquality().hash(wayTravel) ^
      const DeepCollectionEquality().hash(isColorChanged) ^
      const DeepCollectionEquality().hash(isAddressSearchBar) ^
      const DeepCollectionEquality().hash(isLayoverAddressBar) ^
      const DeepCollectionEquality().hash(startDestination) ^
      const DeepCollectionEquality().hash(endDestination);

  @JsonKey(ignore: true)
  @override
  _$TravelCreateStateCopyWith<_TravelCreateState> get copyWith =>
      __$TravelCreateStateCopyWithImpl<_TravelCreateState>(this, _$identity);
}

abstract class _TravelCreateState implements TravelCreateState {
  factory _TravelCreateState(
      {required bool isLoading,
      required Travel? travel,
      required TravelResearch? startTravel,
      required TravelResearch? endTravel,
      required List<TravelResearch> wayTravel,
      required bool isColorChanged,
      required bool isAddressSearchBar,
      required bool isLayoverAddressBar,
      required String startDestination,
      required String endDestination}) = _$_TravelCreateState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Travel? get travel => throw _privateConstructorUsedError;
  @override
  TravelResearch? get startTravel => throw _privateConstructorUsedError;
  @override
  TravelResearch? get endTravel => throw _privateConstructorUsedError;
  @override
  List<TravelResearch> get wayTravel => throw _privateConstructorUsedError;
  @override
  bool get isColorChanged => throw _privateConstructorUsedError;
  @override
  bool get isAddressSearchBar => throw _privateConstructorUsedError;
  @override
  bool get isLayoverAddressBar => throw _privateConstructorUsedError;
  @override
  String get startDestination => throw _privateConstructorUsedError;
  @override
  String get endDestination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelCreateStateCopyWith<_TravelCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
