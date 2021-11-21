// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'travel_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelDto _$TravelDtoFromJson(Map<String, dynamic> json) {
  return _TravelDto.fromJson(json);
}

/// @nodoc
class _$TravelDtoTearOff {
  const _$TravelDtoTearOff();

  _TravelDto call(
      {required TravelCourseDto? start,
      required TravelCourseDto? end,
      @JsonKey(name: 'way_arr')
          required List<TravelCourseDto> wayArr,
      @JsonKey(name: 'pre_research')
          required List<TravelResearchDto> preResearch}) {
    return _TravelDto(
      start: start,
      end: end,
      wayArr: wayArr,
      preResearch: preResearch,
    );
  }

  TravelDto fromJson(Map<String, Object> json) {
    return TravelDto.fromJson(json);
  }
}

/// @nodoc
const $TravelDto = _$TravelDtoTearOff();

/// @nodoc
mixin _$TravelDto {
  TravelCourseDto? get start => throw _privateConstructorUsedError;
  TravelCourseDto? get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'way_arr')
  List<TravelCourseDto> get wayArr => throw _privateConstructorUsedError;
  @JsonKey(name: 'pre_research')
  List<TravelResearchDto> get preResearch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelDtoCopyWith<TravelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelDtoCopyWith<$Res> {
  factory $TravelDtoCopyWith(TravelDto value, $Res Function(TravelDto) then) =
      _$TravelDtoCopyWithImpl<$Res>;
  $Res call(
      {TravelCourseDto? start,
      TravelCourseDto? end,
      @JsonKey(name: 'way_arr') List<TravelCourseDto> wayArr,
      @JsonKey(name: 'pre_research') List<TravelResearchDto> preResearch});

  $TravelCourseDtoCopyWith<$Res>? get start;
  $TravelCourseDtoCopyWith<$Res>? get end;
}

/// @nodoc
class _$TravelDtoCopyWithImpl<$Res> implements $TravelDtoCopyWith<$Res> {
  _$TravelDtoCopyWithImpl(this._value, this._then);

  final TravelDto _value;
  // ignore: unused_field
  final $Res Function(TravelDto) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? wayArr = freezed,
    Object? preResearch = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TravelCourseDto?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TravelCourseDto?,
      wayArr: wayArr == freezed
          ? _value.wayArr
          : wayArr // ignore: cast_nullable_to_non_nullable
              as List<TravelCourseDto>,
      preResearch: preResearch == freezed
          ? _value.preResearch
          : preResearch // ignore: cast_nullable_to_non_nullable
              as List<TravelResearchDto>,
    ));
  }

  @override
  $TravelCourseDtoCopyWith<$Res>? get start {
    if (_value.start == null) {
      return null;
    }

    return $TravelCourseDtoCopyWith<$Res>(_value.start!, (value) {
      return _then(_value.copyWith(start: value));
    });
  }

  @override
  $TravelCourseDtoCopyWith<$Res>? get end {
    if (_value.end == null) {
      return null;
    }

    return $TravelCourseDtoCopyWith<$Res>(_value.end!, (value) {
      return _then(_value.copyWith(end: value));
    });
  }
}

/// @nodoc
abstract class _$TravelDtoCopyWith<$Res> implements $TravelDtoCopyWith<$Res> {
  factory _$TravelDtoCopyWith(
          _TravelDto value, $Res Function(_TravelDto) then) =
      __$TravelDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {TravelCourseDto? start,
      TravelCourseDto? end,
      @JsonKey(name: 'way_arr') List<TravelCourseDto> wayArr,
      @JsonKey(name: 'pre_research') List<TravelResearchDto> preResearch});

  @override
  $TravelCourseDtoCopyWith<$Res>? get start;
  @override
  $TravelCourseDtoCopyWith<$Res>? get end;
}

/// @nodoc
class __$TravelDtoCopyWithImpl<$Res> extends _$TravelDtoCopyWithImpl<$Res>
    implements _$TravelDtoCopyWith<$Res> {
  __$TravelDtoCopyWithImpl(_TravelDto _value, $Res Function(_TravelDto) _then)
      : super(_value, (v) => _then(v as _TravelDto));

  @override
  _TravelDto get _value => super._value as _TravelDto;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? wayArr = freezed,
    Object? preResearch = freezed,
  }) {
    return _then(_TravelDto(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as TravelCourseDto?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as TravelCourseDto?,
      wayArr: wayArr == freezed
          ? _value.wayArr
          : wayArr // ignore: cast_nullable_to_non_nullable
              as List<TravelCourseDto>,
      preResearch: preResearch == freezed
          ? _value.preResearch
          : preResearch // ignore: cast_nullable_to_non_nullable
              as List<TravelResearchDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelDto extends _TravelDto {
  const _$_TravelDto(
      {required this.start,
      required this.end,
      @JsonKey(name: 'way_arr') required this.wayArr,
      @JsonKey(name: 'pre_research') required this.preResearch})
      : super._();

  factory _$_TravelDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TravelDtoFromJson(json);

  @override
  final TravelCourseDto? start;
  @override
  final TravelCourseDto? end;
  @override
  @JsonKey(name: 'way_arr')
  final List<TravelCourseDto> wayArr;
  @override
  @JsonKey(name: 'pre_research')
  final List<TravelResearchDto> preResearch;

  @override
  String toString() {
    return 'TravelDto(start: $start, end: $end, wayArr: $wayArr, preResearch: $preResearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelDto &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(other.wayArr, wayArr) ||
                const DeepCollectionEquality().equals(other.wayArr, wayArr)) &&
            (identical(other.preResearch, preResearch) ||
                const DeepCollectionEquality()
                    .equals(other.preResearch, preResearch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(wayArr) ^
      const DeepCollectionEquality().hash(preResearch);

  @JsonKey(ignore: true)
  @override
  _$TravelDtoCopyWith<_TravelDto> get copyWith =>
      __$TravelDtoCopyWithImpl<_TravelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TravelDtoToJson(this);
  }
}

abstract class _TravelDto extends TravelDto {
  const factory _TravelDto(
      {required TravelCourseDto? start,
      required TravelCourseDto? end,
      @JsonKey(name: 'way_arr')
          required List<TravelCourseDto> wayArr,
      @JsonKey(name: 'pre_research')
          required List<TravelResearchDto> preResearch}) = _$_TravelDto;
  const _TravelDto._() : super._();

  factory _TravelDto.fromJson(Map<String, dynamic> json) =
      _$_TravelDto.fromJson;

  @override
  TravelCourseDto? get start => throw _privateConstructorUsedError;
  @override
  TravelCourseDto? get end => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'way_arr')
  List<TravelCourseDto> get wayArr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pre_research')
  List<TravelResearchDto> get preResearch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelDtoCopyWith<_TravelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelCourseDto _$TravelCourseDtoFromJson(Map<String, dynamic> json) {
  return _TravelCourseDto.fromJson(json);
}

/// @nodoc
class _$TravelCourseDtoTearOff {
  const _$TravelCourseDtoTearOff();

  _TravelCourseDto call(
      {required String date,
      required String time,
      required String id,
      @JsonKey(name: '_x') required String x,
      @JsonKey(name: '_y') required String y,
      @JsonKey(name: 'place_name') required String placeName,
      required List<TravelResearchDto> research}) {
    return _TravelCourseDto(
      date: date,
      time: time,
      id: id,
      x: x,
      y: y,
      placeName: placeName,
      research: research,
    );
  }

  TravelCourseDto fromJson(Map<String, Object> json) {
    return TravelCourseDto.fromJson(json);
  }
}

/// @nodoc
const $TravelCourseDto = _$TravelCourseDtoTearOff();

/// @nodoc
mixin _$TravelCourseDto {
  String get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: '_x')
  String get x => throw _privateConstructorUsedError;
  @JsonKey(name: '_y')
  String get y => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_name')
  String get placeName => throw _privateConstructorUsedError;
  List<TravelResearchDto> get research => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCourseDtoCopyWith<TravelCourseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCourseDtoCopyWith<$Res> {
  factory $TravelCourseDtoCopyWith(
          TravelCourseDto value, $Res Function(TravelCourseDto) then) =
      _$TravelCourseDtoCopyWithImpl<$Res>;
  $Res call(
      {String date,
      String time,
      String id,
      @JsonKey(name: '_x') String x,
      @JsonKey(name: '_y') String y,
      @JsonKey(name: 'place_name') String placeName,
      List<TravelResearchDto> research});
}

/// @nodoc
class _$TravelCourseDtoCopyWithImpl<$Res>
    implements $TravelCourseDtoCopyWith<$Res> {
  _$TravelCourseDtoCopyWithImpl(this._value, this._then);

  final TravelCourseDto _value;
  // ignore: unused_field
  final $Res Function(TravelCourseDto) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? id = freezed,
    Object? x = freezed,
    Object? y = freezed,
    Object? placeName = freezed,
    Object? research = freezed,
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
      research: research == freezed
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as List<TravelResearchDto>,
    ));
  }
}

/// @nodoc
abstract class _$TravelCourseDtoCopyWith<$Res>
    implements $TravelCourseDtoCopyWith<$Res> {
  factory _$TravelCourseDtoCopyWith(
          _TravelCourseDto value, $Res Function(_TravelCourseDto) then) =
      __$TravelCourseDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String date,
      String time,
      String id,
      @JsonKey(name: '_x') String x,
      @JsonKey(name: '_y') String y,
      @JsonKey(name: 'place_name') String placeName,
      List<TravelResearchDto> research});
}

/// @nodoc
class __$TravelCourseDtoCopyWithImpl<$Res>
    extends _$TravelCourseDtoCopyWithImpl<$Res>
    implements _$TravelCourseDtoCopyWith<$Res> {
  __$TravelCourseDtoCopyWithImpl(
      _TravelCourseDto _value, $Res Function(_TravelCourseDto) _then)
      : super(_value, (v) => _then(v as _TravelCourseDto));

  @override
  _TravelCourseDto get _value => super._value as _TravelCourseDto;

  @override
  $Res call({
    Object? date = freezed,
    Object? time = freezed,
    Object? id = freezed,
    Object? x = freezed,
    Object? y = freezed,
    Object? placeName = freezed,
    Object? research = freezed,
  }) {
    return _then(_TravelCourseDto(
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
      research: research == freezed
          ? _value.research
          : research // ignore: cast_nullable_to_non_nullable
              as List<TravelResearchDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelCourseDto extends _TravelCourseDto {
  const _$_TravelCourseDto(
      {required this.date,
      required this.time,
      required this.id,
      @JsonKey(name: '_x') required this.x,
      @JsonKey(name: '_y') required this.y,
      @JsonKey(name: 'place_name') required this.placeName,
      required this.research})
      : super._();

  factory _$_TravelCourseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TravelCourseDtoFromJson(json);

  @override
  final String date;
  @override
  final String time;
  @override
  final String id;
  @override
  @JsonKey(name: '_x')
  final String x;
  @override
  @JsonKey(name: '_y')
  final String y;
  @override
  @JsonKey(name: 'place_name')
  final String placeName;
  @override
  final List<TravelResearchDto> research;

  @override
  String toString() {
    return 'TravelCourseDto(date: $date, time: $time, id: $id, x: $x, y: $y, placeName: $placeName, research: $research)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelCourseDto &&
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
                    .equals(other.placeName, placeName)) &&
            (identical(other.research, research) ||
                const DeepCollectionEquality()
                    .equals(other.research, research)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y) ^
      const DeepCollectionEquality().hash(placeName) ^
      const DeepCollectionEquality().hash(research);

  @JsonKey(ignore: true)
  @override
  _$TravelCourseDtoCopyWith<_TravelCourseDto> get copyWith =>
      __$TravelCourseDtoCopyWithImpl<_TravelCourseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TravelCourseDtoToJson(this);
  }
}

abstract class _TravelCourseDto extends TravelCourseDto {
  const factory _TravelCourseDto(
      {required String date,
      required String time,
      required String id,
      @JsonKey(name: '_x') required String x,
      @JsonKey(name: '_y') required String y,
      @JsonKey(name: 'place_name') required String placeName,
      required List<TravelResearchDto> research}) = _$_TravelCourseDto;
  const _TravelCourseDto._() : super._();

  factory _TravelCourseDto.fromJson(Map<String, dynamic> json) =
      _$_TravelCourseDto.fromJson;

  @override
  String get date => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_x')
  String get x => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: '_y')
  String get y => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'place_name')
  String get placeName => throw _privateConstructorUsedError;
  @override
  List<TravelResearchDto> get research => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelCourseDtoCopyWith<_TravelCourseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

TravelResearchDto _$TravelResearchDtoFromJson(Map<String, dynamic> json) {
  return _TravelResearchDto.fromJson(json);
}

/// @nodoc
class _$TravelResearchDtoTearOff {
  const _$TravelResearchDtoTearOff();

  _TravelResearchDto call({required String id, required List<String> answer}) {
    return _TravelResearchDto(
      id: id,
      answer: answer,
    );
  }

  TravelResearchDto fromJson(Map<String, Object> json) {
    return TravelResearchDto.fromJson(json);
  }
}

/// @nodoc
const $TravelResearchDto = _$TravelResearchDtoTearOff();

/// @nodoc
mixin _$TravelResearchDto {
  String get id => throw _privateConstructorUsedError;
  List<String> get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelResearchDtoCopyWith<TravelResearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelResearchDtoCopyWith<$Res> {
  factory $TravelResearchDtoCopyWith(
          TravelResearchDto value, $Res Function(TravelResearchDto) then) =
      _$TravelResearchDtoCopyWithImpl<$Res>;
  $Res call({String id, List<String> answer});
}

/// @nodoc
class _$TravelResearchDtoCopyWithImpl<$Res>
    implements $TravelResearchDtoCopyWith<$Res> {
  _$TravelResearchDtoCopyWithImpl(this._value, this._then);

  final TravelResearchDto _value;
  // ignore: unused_field
  final $Res Function(TravelResearchDto) _then;

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
abstract class _$TravelResearchDtoCopyWith<$Res>
    implements $TravelResearchDtoCopyWith<$Res> {
  factory _$TravelResearchDtoCopyWith(
          _TravelResearchDto value, $Res Function(_TravelResearchDto) then) =
      __$TravelResearchDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<String> answer});
}

/// @nodoc
class __$TravelResearchDtoCopyWithImpl<$Res>
    extends _$TravelResearchDtoCopyWithImpl<$Res>
    implements _$TravelResearchDtoCopyWith<$Res> {
  __$TravelResearchDtoCopyWithImpl(
      _TravelResearchDto _value, $Res Function(_TravelResearchDto) _then)
      : super(_value, (v) => _then(v as _TravelResearchDto));

  @override
  _TravelResearchDto get _value => super._value as _TravelResearchDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? answer = freezed,
  }) {
    return _then(_TravelResearchDto(
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
@JsonSerializable()
class _$_TravelResearchDto extends _TravelResearchDto {
  const _$_TravelResearchDto({required this.id, required this.answer})
      : super._();

  factory _$_TravelResearchDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TravelResearchDtoFromJson(json);

  @override
  final String id;
  @override
  final List<String> answer;

  @override
  String toString() {
    return 'TravelResearchDto(id: $id, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelResearchDto &&
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
  _$TravelResearchDtoCopyWith<_TravelResearchDto> get copyWith =>
      __$TravelResearchDtoCopyWithImpl<_TravelResearchDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TravelResearchDtoToJson(this);
  }
}

abstract class _TravelResearchDto extends TravelResearchDto {
  const factory _TravelResearchDto(
      {required String id,
      required List<String> answer}) = _$_TravelResearchDto;
  const _TravelResearchDto._() : super._();

  factory _TravelResearchDto.fromJson(Map<String, dynamic> json) =
      _$_TravelResearchDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  List<String> get answer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelResearchDtoCopyWith<_TravelResearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}
