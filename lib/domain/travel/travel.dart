import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel.freezed.dart';

@freezed
class Travel with _$Travel {
  const factory Travel({
    required TravelResearch? start,
    required TravelResearch? end,
    required List<TravelResearch> wayArr,
  }) = _Travel;

  factory Travel.empty() => const Travel(
        start: null,
        end: null,
        wayArr: [],
      );
}

@freezed
class TravelResearch with _$TravelResearch {
  const factory TravelResearch({
    required String date,
    required String time,
    required String id,
    required String x,
    required String y,
  }) = _TravelResearch;

  factory TravelResearch.empty() => const TravelResearch(
        date: "",
        time: "",
        id: "",
        x: "",
        y: "",
      );
}
