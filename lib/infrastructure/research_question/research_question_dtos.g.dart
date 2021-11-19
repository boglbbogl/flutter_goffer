// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'research_question_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResearchQuestionDto _$_$_ResearchQuestionDtoFromJson(
    Map<String, dynamic> json) {
  return _$_ResearchQuestionDto(
    question: json['question'] as String,
    answerChoice: json['answer_choice'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_ResearchQuestionDtoToJson(
        _$_ResearchQuestionDto instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer_choice': instance.answerChoice,
    };
