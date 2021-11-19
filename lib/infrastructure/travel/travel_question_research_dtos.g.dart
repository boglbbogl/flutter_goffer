// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_question_research_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelQuestionResearchDto _$_$_TravelQuestionResearchDtoFromJson(
    Map<String, dynamic> json) {
  return _$_TravelQuestionResearchDto(
    question: json['question'] as String,
    answerChoice: json['answer_choice'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$_$_TravelQuestionResearchDtoToJson(
        _$_TravelQuestionResearchDto instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer_choice': instance.answerChoice,
    };
