// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'travel_question_research_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelQuestionResearchDto _$TravelQuestionResearchDtoFromJson(
    Map<String, dynamic> json) {
  return _TravelQuestionResearchDto.fromJson(json);
}

/// @nodoc
class _$TravelQuestionResearchDtoTearOff {
  const _$TravelQuestionResearchDtoTearOff();

  _TravelQuestionResearchDto call(
      {required String question,
      @JsonKey(name: 'answer_choice')
          required Map<String, dynamic> answerChoice}) {
    return _TravelQuestionResearchDto(
      question: question,
      answerChoice: answerChoice,
    );
  }

  TravelQuestionResearchDto fromJson(Map<String, Object> json) {
    return TravelQuestionResearchDto.fromJson(json);
  }
}

/// @nodoc
const $TravelQuestionResearchDto = _$TravelQuestionResearchDtoTearOff();

/// @nodoc
mixin _$TravelQuestionResearchDto {
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_choice')
  Map<String, dynamic> get answerChoice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelQuestionResearchDtoCopyWith<TravelQuestionResearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelQuestionResearchDtoCopyWith<$Res> {
  factory $TravelQuestionResearchDtoCopyWith(TravelQuestionResearchDto value,
          $Res Function(TravelQuestionResearchDto) then) =
      _$TravelQuestionResearchDtoCopyWithImpl<$Res>;
  $Res call(
      {String question,
      @JsonKey(name: 'answer_choice') Map<String, dynamic> answerChoice});
}

/// @nodoc
class _$TravelQuestionResearchDtoCopyWithImpl<$Res>
    implements $TravelQuestionResearchDtoCopyWith<$Res> {
  _$TravelQuestionResearchDtoCopyWithImpl(this._value, this._then);

  final TravelQuestionResearchDto _value;
  // ignore: unused_field
  final $Res Function(TravelQuestionResearchDto) _then;

  @override
  $Res call({
    Object? question = freezed,
    Object? answerChoice = freezed,
  }) {
    return _then(_value.copyWith(
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answerChoice: answerChoice == freezed
          ? _value.answerChoice
          : answerChoice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$TravelQuestionResearchDtoCopyWith<$Res>
    implements $TravelQuestionResearchDtoCopyWith<$Res> {
  factory _$TravelQuestionResearchDtoCopyWith(_TravelQuestionResearchDto value,
          $Res Function(_TravelQuestionResearchDto) then) =
      __$TravelQuestionResearchDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String question,
      @JsonKey(name: 'answer_choice') Map<String, dynamic> answerChoice});
}

/// @nodoc
class __$TravelQuestionResearchDtoCopyWithImpl<$Res>
    extends _$TravelQuestionResearchDtoCopyWithImpl<$Res>
    implements _$TravelQuestionResearchDtoCopyWith<$Res> {
  __$TravelQuestionResearchDtoCopyWithImpl(_TravelQuestionResearchDto _value,
      $Res Function(_TravelQuestionResearchDto) _then)
      : super(_value, (v) => _then(v as _TravelQuestionResearchDto));

  @override
  _TravelQuestionResearchDto get _value =>
      super._value as _TravelQuestionResearchDto;

  @override
  $Res call({
    Object? question = freezed,
    Object? answerChoice = freezed,
  }) {
    return _then(_TravelQuestionResearchDto(
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answerChoice: answerChoice == freezed
          ? _value.answerChoice
          : answerChoice // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelQuestionResearchDto extends _TravelQuestionResearchDto {
  const _$_TravelQuestionResearchDto(
      {required this.question,
      @JsonKey(name: 'answer_choice') required this.answerChoice})
      : super._();

  factory _$_TravelQuestionResearchDto.fromJson(Map<String, dynamic> json) =>
      _$_$_TravelQuestionResearchDtoFromJson(json);

  @override
  final String question;
  @override
  @JsonKey(name: 'answer_choice')
  final Map<String, dynamic> answerChoice;

  @override
  String toString() {
    return 'TravelQuestionResearchDto(question: $question, answerChoice: $answerChoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelQuestionResearchDto &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answerChoice, answerChoice) ||
                const DeepCollectionEquality()
                    .equals(other.answerChoice, answerChoice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answerChoice);

  @JsonKey(ignore: true)
  @override
  _$TravelQuestionResearchDtoCopyWith<_TravelQuestionResearchDto>
      get copyWith =>
          __$TravelQuestionResearchDtoCopyWithImpl<_TravelQuestionResearchDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TravelQuestionResearchDtoToJson(this);
  }
}

abstract class _TravelQuestionResearchDto extends TravelQuestionResearchDto {
  const factory _TravelQuestionResearchDto(
          {required String question,
          @JsonKey(name: 'answer_choice')
              required Map<String, dynamic> answerChoice}) =
      _$_TravelQuestionResearchDto;
  const _TravelQuestionResearchDto._() : super._();

  factory _TravelQuestionResearchDto.fromJson(Map<String, dynamic> json) =
      _$_TravelQuestionResearchDto.fromJson;

  @override
  String get question => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'answer_choice')
  Map<String, dynamic> get answerChoice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelQuestionResearchDtoCopyWith<_TravelQuestionResearchDto>
      get copyWith => throw _privateConstructorUsedError;
}
