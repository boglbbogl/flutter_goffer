import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_question_research_dtos.freezed.dart';
part 'travel_question_research_dtos.g.dart';

@freezed
class TravelQuestionResearchDto with _$TravelQuestionResearchDto {
  const factory TravelQuestionResearchDto({
    required String question,
    @JsonKey(name: 'answer_choice') required Map<String, dynamic> answerChoice,
  }) = _TravelQuestionResearchDto;
  const TravelQuestionResearchDto._();
  factory TravelQuestionResearchDto.fromJson(Map<String, dynamic> json) =>
      _$TravelQuestionResearchDtoFromJson(json);

  TravelQuestionResearchDto toDomain() => TravelQuestionResearchDto(
        question: question,
        answerChoice: answerChoice,
      );
}
