// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'travel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TravelTearOff {
  const _$TravelTearOff();

  _Travel call(
      {required TravelCourse? start,
      required TravelCourse? end,
      required List<TravelCourse> wayArr,
      required TravelResearch? research}) {
    return _Travel(
      start: start,
      end: end,
      wayArr: wayArr,
      research: research,
    );
  }
}

/// @nodoc
const $Travel = _$TravelTearOff();

/// @nodoc
mixin _$Travel {
  TravelCourse? get start => throw _privateConstructorUsedError;
  TravelCourse? get end => throw _privateConstructorUsedError;
  List<TravelCourse> get wayArr => throw _privateConstructorUsedError;
  TravelResearch? get research => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelCopyWith<Travel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCopyWith<$Res> {
  factory $TravelCopyWith(Travel value, $Res Function(Travel) then) =
      _$TravelCopyWithImpl<$Res>;
  $Res call(
      {TravelCourse? start,
      TravelCourse? end,
      List<TravelCourse> wayArr,
      TravelResearch? research});

  $TravelCourseCopyWith<$Res>? get start;
  $TravelCourseCopyWith<$Res>? get end;
  $TravelResearchCopyWith<$Res>? get research;
}

/// @nodoc
class _$TravelCopyWithImpl<$Res> implements $TravelCopyWith<$Res> {
  _$TravelCopyWithImpl(this._value, this._then);

  final Travel _value;
  // ignore: unused_field
  final $Res Function(Travel) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? wayArr = freezed,
    Object? research = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TravelCourse?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TravelCourse?,
      wayArr: wayArr == freezed
          ? _value.wayArr
          : wayArr // ignore: cast_nullable_to_non_nullable
              as List<TravelCourse>,
      research: research == freezed
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as TravelResearch?,
    ));
  }

  @override
  $TravelCourseCopyWith<$Res>? get start {
    if (_value.start == null) {
      return null;
    }

    return $TravelCourseCopyWith<$Res>(_value.start!, (value) {
      return _then(_value.copyWith(start: value));
    });
  }

  @override
  $TravelCourseCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $TravelCourseCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value));
    });
  }

  @override
  $TravelResearchCopyWith<$Res>? get research {
    if (_value.research == null) {
      return null;
    }

    return $TravelResearchCopyWith<$Res>(_value.research!, (value) {
      return _then(_value.copyWith(research: value));
    });
  }
}

/// @nodoc
abstract class _$TravelCopyWith<$Res> implements $TravelCopyWith<$Res> {
  factory _$TravelCopyWith(_Travel value, $Res Function(_Travel) then) =
      __$TravelCopyWithImpl<$Res>;
  @override
  $Res call(
      {TravelCourse? start,
      TravelCourse? end,
      List<TravelCourse> wayArr,
      TravelResearch? research});

  @override
  $TravelCourseCopyWith<$Res>? get start;
  @override
  $TravelCourseCopyWith<$Res>? get end;
  @override
  $TravelResearchCopyWith<$Res>? get research;
}

/// @nodoc
class __$TravelCopyWithImpl<$Res> extends _$TravelCopyWithImpl<$Res>
    implements _$TravelCopyWith<$Res> {
  __$TravelCopyWithImpl(_Travel _value, $Res Function(_Travel) _then)
      : super(_value, (v) => _then(v as _Travel));

  @override
  _Travel get _value => super._value as _Travel;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? wayArr = freezed,
    Object? research = freezed,
  }) {
    return _then(_Travel(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TravelCourse?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TravelCourse?,
      wayArr: wayArr == freezed
          ? _value.wayArr
          : wayArr // ignore: cast_nullable_to_non_nullable
              as List<TravelCourse>,
      research: research == freezed
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as TravelResearch?,
    ));
  }
}

/// @nodoc

class _$_Travel implements _Travel {
  const _$_Travel(
      {required this.start,
      required this.end,
      required this.wayArr,
      required this.research});

  @override
  final TravelCourse? start;
  @override
  final TravelCourse? end;
  @override
  final List<TravelCourse> wayArr;
  @override
  final TravelResearch? research;

  @override
  String toString() {
    return 'Travel(start: $start, end: $end, wayArr: $wayArr, research: $research)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Travel &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(other.wayArr, wayArr) ||
                const DeepCollectionEquality().equals(other.wayArr, wayArr)) &&
            (identical(other.research, research) ||
                const DeepCollectionEquality()
                    .equals(other.research, research)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(wayArr) ^
      const DeepCollectionEquality().hash(research);

  @JsonKey(ignore: true)
  @override
  _$TravelCopyWith<_Travel> get copyWith =>
      __$TravelCopyWithImpl<_Travel>(this, _$identity);
}

abstract class _Travel implements Travel {
  const factory _Travel(
      {required TravelCourse? start,
      required TravelCourse? end,
      required List<TravelCourse> wayArr,
      required TravelResearch? research}) = _$_Travel;

  @override
  TravelCourse? get start => throw _privateConstructorUsedError;
  @override
  TravelCourse? get end => throw _privateConstructorUsedError;
  @override
  List<TravelCourse> get wayArr => throw _privateConstructorUsedError;
  @override
  TravelResearch? get research => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelCopyWith<_Travel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$TravelCourseTearOff {
  const _$TravelCourseTearOff();

  _TravelCourse call(
      {required String date,
      required String time,
      required String id,
      required String x,
      required String y,
      required String placeName}) {
    return _TravelCourse(
      date: date,
      time: time,
      id: id,
      x: x,
      y: y,
      placeName: placeName,
    );
  }
}

/// @nodoc
const $TravelCourse = _$TravelCourseTearOff();

/// @nodoc
mixin _$TravelCourse {
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get x => throw _privateConstructorUsedError;
  String get y => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelCourseCopyWith<TravelCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCourseCopyWith<$Res> {
  factory $TravelCourseCopyWith(
          TravelCourse value, $Res Function(TravelCourse) then) =
      _$TravelCourseCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String time,
      String id,
      String x,
      String y,
      String placeName});
}

/// @nodoc
class _$TravelCourseCopyWithImpl<$Res> implements $TravelCourseCopyWith<$Res> {
  _$TravelCourseCopyWithImpl(this._value, this._then);

  final TravelCourse _value;
  // ignore: unused_field
  final $Res Function(TravelCourse) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? id = freezed,
    Object? x = freezed,
    Object? y = freezed,
    Object? placeName = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TravelCourseCopyWith<$Res>
    implements $TravelCourseCopyWith<$Res> {
  factory _$TravelCourseCopyWith(
          _TravelCourse value, $Res Function(_TravelCourse) then) =
      __$TravelCourseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String time,
      String id,
      String x,
      String y,
      String placeName});
}

/// @nodoc
class __$TravelCourseCopyWithImpl<$Res> extends _$TravelCourseCopyWithImpl<$Res>
    implements _$TravelCourseCopyWith<$Res> {
  __$TravelCourseCopyWithImpl(
      _TravelCourse _value, $Res Function(_TravelCourse) _then)
      : super(_value, (v) => _then(v as _TravelCourse));

  @override
  _TravelCourse get _value => super._value as _TravelCourse;

  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? id = freezed,
    Object? x = freezed,
    Object? y = freezed,
    Object? placeName = freezed,
  }) {
    return _then(_TravelCourse(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as String,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as String,
      placeName: placeName == freezed
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TravelCourse implements _TravelCourse {
  const _$_TravelCourse(
      {required this.date,
      required this.time,
      required this.id,
      required this.x,
      required this.y,
      required this.placeName});

  @override
  final String date;
  @override
  final String time;
  @override
  final String id;
  @override
  final String x;
  @override
  final String y;
  @override
  final String placeName;

  @override
  String toString() {
    return 'TravelCourse(date: $date, time: $time, id: $id, x: $x, y: $y, placeName: $placeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelCourse &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)) &&
            (identical(other.placeName, placeName) ||
                const DeepCollectionEquality()
                    .equals(other.placeName, placeName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      const DeepCollectionEquality().hash(placeName);

  @JsonKey(ignore: true)
  @override
  _$TravelCourseCopyWith<_TravelCourse> get copyWith =>
      __$TravelCourseCopyWithImpl<_TravelCourse>(this, _$identity);
}

abstract class _TravelCourse implements TravelCourse {
  const factory _TravelCourse(
      {required String date,
      required String time,
      required String id,
      required String x,
      required String y,
      required String placeName}) = _$_TravelCourse;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get x => throw _privateConstructorUsedError;
  @override
  String get y => throw _privateConstructorUsedError;
  @override
  String get placeName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelCourseCopyWith<_TravelCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TravelResearchTearOff {
  const _$TravelResearchTearOff();

  _TravelResearch call({required String id, required List<String> answer}) {
    return _TravelResearch(
      id: id,
      answer: answer,
    );
  }
}

/// @nodoc
const $TravelResearch = _$TravelResearchTearOff();

/// @nodoc
mixin _$TravelResearch {
  String get id => throw _privateConstructorUsedError;
  List<String> get answer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelResearchCopyWith<TravelResearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelResearchCopyWith<$Res> {
  factory $TravelResearchCopyWith(
          TravelResearch value, $Res Function(TravelResearch) then) =
      _$TravelResearchCopyWithImpl<$Res>;
  $Res call({String id, List<String> answer});
}

/// @nodoc
class _$TravelResearchCopyWithImpl<$Res>
    implements $TravelResearchCopyWith<$Res> {
  _$TravelResearchCopyWithImpl(this._value, this._then);

  final TravelResearch _value;
  // ignore: unused_field
  final $Res Function(TravelResearch) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$TravelResearchCopyWith<$Res>
    implements $TravelResearchCopyWith<$Res> {
  factory _$TravelResearchCopyWith(
          _TravelResearch value, $Res Function(_TravelResearch) then) =
      __$TravelResearchCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<String> answer});
}

/// @nodoc
class __$TravelResearchCopyWithImpl<$Res>
    extends _$TravelResearchCopyWithImpl<$Res>
    implements _$TravelResearchCopyWith<$Res> {
  __$TravelResearchCopyWithImpl(
      _TravelResearch _value, $Res Function(_TravelResearch) _then)
      : super(_value, (v) => _then(v as _TravelResearch));

  @override
  _TravelResearch get _value => super._value as _TravelResearch;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_TravelResearch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_TravelResearch implements _TravelResearch {
  const _$_TravelResearch({required this.id, required this.answer});

  @override
  final String id;
  @override
  final List<String> answer;

  @override
  String toString() {
    return 'TravelResearch(id: $id, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelResearch &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(answer);

  @JsonKey(ignore: true)
  @override
  _$TravelResearchCopyWith<_TravelResearch> get copyWith =>
      __$TravelResearchCopyWithImpl<_TravelResearch>(this, _$identity);
}

abstract class _TravelResearch implements TravelResearch {
  const factory _TravelResearch(
      {required String id, required List<String> answer}) = _$_TravelResearch;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  List<String> get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelResearchCopyWith<_TravelResearch> get copyWith =>
      throw _privateConstructorUsedError;
}
