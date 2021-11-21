import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel.freezed.dart';

@freezed
class Travel with _$Travel {
  const factory Travel({
    required TravelCourse? start,
    required TravelCourse? end,
    required List<TravelCourse> wayArr,
    required List<TravelResearch> preResearch,
  }) = _Travel;

  factory Travel.empty() => const Travel(
        start: null,
        end: null,
        wayArr: [],
        preResearch: [],
      );
}

@freezed
class TravelCourse with _$TravelCourse {
  const factory TravelCourse({
    required String date,
    required String time,
    required String id,
    required String x,
    required String y,
    required String placeName,
    required List<TravelResearch> research,
  }) = _TravelCourse;

  factory TravelCourse.empty() => const TravelCourse(
        date: "",
        time: "",
        id: "",
        x: "",
        y: "",
        placeName: "",
        research: [],
      );
}

@freezed
class TravelResearch with _$TravelResearch {
  const factory TravelResearch({
    required String id,
    required List<String> answer,
  }) = _TravelResearch;

  factory TravelResearch.empty() => const TravelResearch(
        id: "",
        answer: [],
      );
}
