import 'package:flutter_goffer/domain/research_question/research_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'research_question_dtos.freezed.dart';
part 'research_question_dtos.g.dart';

@freezed
class ResearchQuestionDto with _$ResearchQuestionDto {
  const factory ResearchQuestionDto({
    required String question,
    @JsonKey(name: 'answer_choice') required Map<String, dynamic> answerChoice,
  }) = _ResearchQuestionDto;
  const ResearchQuestionDto._();

  factory ResearchQuestionDto.fromJson(Map<String, dynamic> json) =>
      _$ResearchQuestionDtoFromJson(json);

  ResearchQuestion toDomain() => ResearchQuestion(
        question: question,
        answerChoice: answerChoice,
      );
}
