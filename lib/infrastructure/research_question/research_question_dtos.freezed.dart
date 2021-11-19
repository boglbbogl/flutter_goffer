// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'research_question_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResearchQuestionDto _$ResearchQuestionDtoFromJson(Map<String, dynamic> json) {
  return _ResearchQuestionDto.fromJson(json);
}

/// @nodoc
class _$ResearchQuestionDtoTearOff {
  const _$ResearchQuestionDtoTearOff();

  _ResearchQuestionDto call(
      {required String question,
      @JsonKey(name: 'answer_choice')
          required Map<String, dynamic> answerChoice}) {
    return _ResearchQuestionDto(
      question: question,
      answerChoice: answerChoice,
    );
  }

  ResearchQuestionDto fromJson(Map<String, Object> json) {
    return ResearchQuestionDto.fromJson(json);
  }
}

/// @nodoc
const $ResearchQuestionDto = _$ResearchQuestionDtoTearOff();

/// @nodoc
mixin _$ResearchQuestionDto {
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_choice')
  Map<String, dynamic> get answerChoice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResearchQuestionDtoCopyWith<ResearchQuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchQuestionDtoCopyWith<$Res> {
  factory $ResearchQuestionDtoCopyWith(
          ResearchQuestionDto value, $Res Function(ResearchQuestionDto) then) =
      _$ResearchQuestionDtoCopyWithImpl<$Res>;
  $Res call(
      {String question,
      @JsonKey(name: 'answer_choice') Map<String, dynamic> answerChoice});
}

/// @nodoc
class _$ResearchQuestionDtoCopyWithImpl<$Res>
    implements $ResearchQuestionDtoCopyWith<$Res> {
  _$ResearchQuestionDtoCopyWithImpl(this._value, this._then);

  final ResearchQuestionDto _value;
  // ignore: unused_field
  final $Res Function(ResearchQuestionDto) _then;

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
abstract class _$ResearchQuestionDtoCopyWith<$Res>
    implements $ResearchQuestionDtoCopyWith<$Res> {
  factory _$ResearchQuestionDtoCopyWith(_ResearchQuestionDto value,
          $Res Function(_ResearchQuestionDto) then) =
      __$ResearchQuestionDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String question,
      @JsonKey(name: 'answer_choice') Map<String, dynamic> answerChoice});
}

/// @nodoc
class __$ResearchQuestionDtoCopyWithImpl<$Res>
    extends _$ResearchQuestionDtoCopyWithImpl<$Res>
    implements _$ResearchQuestionDtoCopyWith<$Res> {
  __$ResearchQuestionDtoCopyWithImpl(
      _ResearchQuestionDto _value, $Res Function(_ResearchQuestionDto) _then)
      : super(_value, (v) => _then(v as _ResearchQuestionDto));

  @override
  _ResearchQuestionDto get _value => super._value as _ResearchQuestionDto;

  @override
  $Res call({
    Object? question = freezed,
    Object? answerChoice = freezed,
  }) {
    return _then(_ResearchQuestionDto(
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
class _$_ResearchQuestionDto extends _ResearchQuestionDto {
  const _$_ResearchQuestionDto(
      {required this.question,
      @JsonKey(name: 'answer_choice') required this.answerChoice})
      : super._();

  factory _$_ResearchQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ResearchQuestionDtoFromJson(json);

  @override
  final String question;
  @override
  @JsonKey(name: 'answer_choice')
  final Map<String, dynamic> answerChoice;

  @override
  String toString() {
    return 'ResearchQuestionDto(question: $question, answerChoice: $answerChoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResearchQuestionDto &&
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
  _$ResearchQuestionDtoCopyWith<_ResearchQuestionDto> get copyWith =>
      __$ResearchQuestionDtoCopyWithImpl<_ResearchQuestionDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResearchQuestionDtoToJson(this);
  }
}

abstract class _ResearchQuestionDto extends ResearchQuestionDto {
  const factory _ResearchQuestionDto(
      {required String question,
      @JsonKey(name: 'answer_choice')
          required Map<String, dynamic> answerChoice}) = _$_ResearchQuestionDto;
  const _ResearchQuestionDto._() : super._();

  factory _ResearchQuestionDto.fromJson(Map<String, dynamic> json) =
      _$_ResearchQuestionDto.fromJson;

  @override
  String get question => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'answer_choice')
  Map<String, dynamic> get answerChoice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResearchQuestionDtoCopyWith<_ResearchQuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
