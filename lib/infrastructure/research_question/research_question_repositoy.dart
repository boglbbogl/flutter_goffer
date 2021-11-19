import 'dart:convert';

import 'package:flutter_goffer/_constant/_flavor/config_reader.dart';
import 'package:flutter_goffer/domain/research_question/i_research_question_repository.dart';
import 'package:flutter_goffer/domain/research_question/research_question.dart';
import 'package:flutter_goffer/infrastructure/research_question/research_question_dtos.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IResearchQuestionRepository)
class ResearchQuestionRepository implements IResearchQuestionRepository {
  static String apiBaseUrl = ConfigReader.getAwsApiBase();

  @override
  Future<ResearchQuestion?> getResearchQuestion({
    required int id,
  }) async {
    try {
      final url = Uri.parse('$apiBaseUrl/research?id=$id');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final decoded = json.decode(utf8.decode(response.bodyBytes));
        final data = decoded["content"];
        final result =
            ResearchQuestionDto.fromJson(data as Map<String, dynamic>)
                .toDomain();

        return result;
      }
      return null;
    } catch (error) {
      return null;
    }
  }
}
