import 'package:freezed_annotation/freezed_annotation.dart';

part 'research_question.freezed.dart';

@freezed
class ResearchQuestion with _$ResearchQuestion {
  const factory ResearchQuestion({
    required String question,
    required Map<String, dynamic> answerChoice,
  }) = _ResearchQuestion;
}
