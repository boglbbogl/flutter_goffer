import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:flutter_goffer/_constant/_flavor/config_reader.dart';
import 'package:flutter_goffer/domain/travel/i_travel_repository.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/domain/travel/travel_failure.dart';
import 'package:flutter_goffer/infrastructure/travel/travel_dtos.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITravelRepository)
class TravelRepository implements ITravelRepository {
  static String apiBaseUrl = ConfigReader.getAwsApiBase();
  @override
  Future<Either<TravelFailure, Unit>> postTravel({
    required Travel travel,
  }) async {
    try {
      final url = Uri.parse('$apiBaseUrl/travel');
      final json = TravelDto.fromDomain(travel).toJson();
      final body = jsonEncode(json);
      final response = await http.post(url,
          headers: {
            "Content-Type": "application/json",
          },
          body: body);
      if (response.statusCode == 200) {
        return right(unit);
      }
      return left(const TravelFailure.notFound());
    } catch (error) {
      return left(const TravelFailure.serverError());
    }
  }
}
