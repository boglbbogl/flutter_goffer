import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_question_research.freezed.dart';

@freezed
class TravelQuestionResearch with _$TravelQuestionResearch {
  const factory TravelQuestionResearch({
    required String question,
    required Map<String, dynamic> answerChoice,
  }) = _TravelQuestionResearch;
}
