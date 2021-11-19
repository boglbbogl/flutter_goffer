// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'research_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResearchQuestionTearOff {
  const _$ResearchQuestionTearOff();

  _ResearchQuestion call(
      {required String question, required Map<String, dynamic> answerChoice}) {
    return _ResearchQuestion(
      question: question,
      answerChoice: answerChoice,
    );
  }
}

/// @nodoc
const $ResearchQuestion = _$ResearchQuestionTearOff();

/// @nodoc
mixin _$ResearchQuestion {
  String get question => throw _privateConstructorUsedError;
  Map<String, dynamic> get answerChoice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResearchQuestionCopyWith<ResearchQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchQuestionCopyWith<$Res> {
  factory $ResearchQuestionCopyWith(
          ResearchQuestion value, $Res Function(ResearchQuestion) then) =
      _$ResearchQuestionCopyWithImpl<$Res>;
  $Res call({String question, Map<String, dynamic> answerChoice});
}

/// @nodoc
class _$ResearchQuestionCopyWithImpl<$Res>
    implements $ResearchQuestionCopyWith<$Res> {
  _$ResearchQuestionCopyWithImpl(this._value, this._then);

  final ResearchQuestion _value;
  // ignore: unused_field
  final $Res Function(ResearchQuestion) _then;

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
abstract class _$ResearchQuestionCopyWith<$Res>
    implements $ResearchQuestionCopyWith<$Res> {
  factory _$ResearchQuestionCopyWith(
          _ResearchQuestion value, $Res Function(_ResearchQuestion) then) =
      __$ResearchQuestionCopyWithImpl<$Res>;
  @override
  $Res call({String question, Map<String, dynamic> answerChoice});
}

/// @nodoc
class __$ResearchQuestionCopyWithImpl<$Res>
    extends _$ResearchQuestionCopyWithImpl<$Res>
    implements _$ResearchQuestionCopyWith<$Res> {
  __$ResearchQuestionCopyWithImpl(
      _ResearchQuestion _value, $Res Function(_ResearchQuestion) _then)
      : super(_value, (v) => _then(v as _ResearchQuestion));

  @override
  _ResearchQuestion get _value => super._value as _ResearchQuestion;

  @override
  $Res call({
    Object? question = freezed,
    Object? answerChoice = freezed,
  }) {
    return _then(_ResearchQuestion(
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

class _$_ResearchQuestion implements _ResearchQuestion {
  const _$_ResearchQuestion(
      {required this.question, required this.answerChoice});

  @override
  final String question;
  @override
  final Map<String, dynamic> answerChoice;

  @override
  String toString() {
    return 'ResearchQuestion(question: $question, answerChoice: $answerChoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResearchQuestion &&
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
  _$ResearchQuestionCopyWith<_ResearchQuestion> get copyWith =>
      __$ResearchQuestionCopyWithImpl<_ResearchQuestion>(this, _$identity);
}

abstract class _ResearchQuestion implements ResearchQuestion {
  const factory _ResearchQuestion(
      {required String question,
      required Map<String, dynamic> answerChoice}) = _$_ResearchQuestion;

  @override
  String get question => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get answerChoice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResearchQuestionCopyWith<_ResearchQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
