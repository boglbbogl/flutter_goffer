import 'package:flutter_goffer/domain/research_question/research_question.dart';

abstract class IResearchQuestionRepository {
  Future<ResearchQuestion?> getResearchQuestion({
    required int id,
  });
}
