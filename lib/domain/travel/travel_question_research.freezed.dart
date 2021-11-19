// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'travel_question_research.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TravelQuestionResearchTearOff {
  const _$TravelQuestionResearchTearOff();

  _TravelQuestionResearch call(
      {required String question, required Map<String, dynamic> answerChoice}) {
    return _TravelQuestionResearch(
      question: question,
      answerChoice: answerChoice,
    );
  }
}

/// @nodoc
const $TravelQuestionResearch = _$TravelQuestionResearchTearOff();

/// @nodoc
mixin _$TravelQuestionResearch {
  String get question => throw _privateConstructorUsedError;
  Map<String, dynamic> get answerChoice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelQuestionResearchCopyWith<TravelQuestionResearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelQuestionResearchCopyWith<$Res> {
  factory $TravelQuestionResearchCopyWith(TravelQuestionResearch value,
          $Res Function(TravelQuestionResearch) then) =
      _$TravelQuestionResearchCopyWithImpl<$Res>;
  $Res call({String question, Map<String, dynamic> answerChoice});
}

/// @nodoc
class _$TravelQuestionResearchCopyWithImpl<$Res>
    implements $TravelQuestionResearchCopyWith<$Res> {
  _$TravelQuestionResearchCopyWithImpl(this._value, this._then);

  final TravelQuestionResearch _value;
  // ignore: unused_field
  final $Res Function(TravelQuestionResearch) _then;

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
abstract class _$TravelQuestionResearchCopyWith<$Res>
    implements $TravelQuestionResearchCopyWith<$Res> {
  factory _$TravelQuestionResearchCopyWith(_TravelQuestionResearch value,
          $Res Function(_TravelQuestionResearch) then) =
      __$TravelQuestionResearchCopyWithImpl<$Res>;
  @override
  $Res call({String question, Map<String, dynamic> answerChoice});
}

/// @nodoc
class __$TravelQuestionResearchCopyWithImpl<$Res>
    extends _$TravelQuestionResearchCopyWithImpl<$Res>
    implements _$TravelQuestionResearchCopyWith<$Res> {
  __$TravelQuestionResearchCopyWithImpl(_TravelQuestionResearch _value,
      $Res Function(_TravelQuestionResearch) _then)
      : super(_value, (v) => _then(v as _TravelQuestionResearch));

  @override
  _TravelQuestionResearch get _value => super._value as _TravelQuestionResearch;

  @override
  $Res call({
    Object? question = freezed,
    Object? answerChoice = freezed,
  }) {
    return _then(_TravelQuestionResearch(
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

class _$_TravelQuestionResearch implements _TravelQuestionResearch {
  const _$_TravelQuestionResearch(
      {required this.question, required this.answerChoice});

  @override
  final String question;
  @override
  final Map<String, dynamic> answerChoice;

  @override
  String toString() {
    return 'TravelQuestionResearch(question: $question, answerChoice: $answerChoice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TravelQuestionResearch &&
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
  _$TravelQuestionResearchCopyWith<_TravelQuestionResearch> get copyWith =>
      __$TravelQuestionResearchCopyWithImpl<_TravelQuestionResearch>(
          this, _$identity);
}

abstract class _TravelQuestionResearch implements TravelQuestionResearch {
  const factory _TravelQuestionResearch(
      {required String question,
      required Map<String, dynamic> answerChoice}) = _$_TravelQuestionResearch;

  @override
  String get question => throw _privateConstructorUsedError;
  @override
  Map<String, dynamic> get answerChoice => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TravelQuestionResearchCopyWith<_TravelQuestionResearch> get copyWith =>
      throw _privateConstructorUsedError;
}
