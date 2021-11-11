import 'dart:convert';

import 'package:flutter_goffer/domain/find_location.dart';
import 'package:flutter_goffer/domain/i_find_location_repository.dart';
import 'package:flutter_goffer/infrastructure/find_location_dtos.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFindLocationRepository)
class FindLocationRepository implements IFindLocationRepository {
  String apiBase = 'http://3.35.47.124:3000/api/v2';
  @override
  Future<List<FindLocation>> getApiFindLocation({
    required String keyWord,
  }) async {
    try {
      final url = Uri.parse('$apiBase/findlocation/more?keyword=$keyWord');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final decoded = json.decode(utf8.decode(response.bodyBytes))
            as Map<String, dynamic>;
        final data = decoded["content"] as List<dynamic>;
        final result = data
            .map((e) =>
                FindLocationDto.fromJson(e as Map<String, dynamic>).toDomain())
            .toList();
        return result;
      }
      return [];
    } catch (error) {
      return [];
    }
  }

  @override
  Future<List<FindLocation>> getLocalFindLocation({
    required String keyWord,
  }) async {
    try {
      final url = Uri.parse('$apiBase/findlocation?keyword=$keyWord');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final decoded = json.decode(utf8.decode(response.bodyBytes))
            as Map<String, dynamic>;
        final data = decoded["content"] as List<dynamic>;
        final result = data
            .map((e) =>
                FindLocationDto.fromJson(e as Map<String, dynamic>).toDomain())
            .toList();
        return result;
      }
      return [];
    } catch (error) {
      return [];
    }
  }
}
