import 'package:dartz/dartz.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/domain/travel/travel_failure.dart';
import 'package:flutter_goffer/domain/travel/travel_question_research.dart';

abstract class ITravelRepository {
  Future<Either<TravelFailure, Unit>> postTravel({
    required Travel travel,
  });

  Future<TravelQuestionResearch?> getResearch({
    required int id,
  });
}
