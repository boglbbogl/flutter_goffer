import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_dtos.freezed.dart';
part 'travel_dtos.g.dart';

@freezed
class TravelDto with _$TravelDto {
  const factory TravelDto({
    required TravelCourseDto? start,
    required TravelCourseDto? end,
    @JsonKey(name: 'way_arr') required List<TravelCourseDto> wayArr,
    @JsonKey(name: 'pre_research') required List<TravelResearchDto> preResearch,
  }) = _TravelDto;
  const TravelDto._();
  factory TravelDto.fromJson(Map<String, dynamic> json) =>
      _$TravelDtoFromJson(json);
  factory TravelDto.fromDomain(Travel t) => TravelDto(
        start: TravelCourseDto.fromDomain(t.start!),
        end: TravelCourseDto.fromDomain(t.end!),
        wayArr: t.wayArr.map((e) => TravelCourseDto.fromDomain(e)).toList(),
        preResearch:
            t.preResearch.map((e) => TravelResearchDto.fromDomain(e)).toList(),
      );

  Travel toDomain() => Travel(
        start: start!.toDomain(),
        end: end!.toDomain(),
        wayArr: wayArr.map((e) => e.toDomain()).toList(),
        preResearch: preResearch.map((e) => e.toDomain()).toList(),
      );
}

@freezed
class TravelCourseDto with _$TravelCourseDto {
  const factory TravelCourseDto({
    required String date,
    required String time,
    required String id,
    @JsonKey(name: '_x') required String x,
    @JsonKey(name: '_y') required String y,
    @JsonKey(name: 'place_name') required String placeName,
    required List<TravelResearchDto> research,
  }) = _TravelCourseDto;
  const TravelCourseDto._();
  factory TravelCourseDto.fromJson(Map<String, dynamic> json) =>
      _$TravelCourseDtoFromJson(json);

  factory TravelCourseDto.fromDomain(TravelCourse r) => TravelCourseDto(
        date: r.date,
        time: r.time,
        id: r.id,
        x: r.x,
        y: r.y,
        placeName: r.placeName,
        research:
            r.research.map((e) => TravelResearchDto.fromDomain(e)).toList(),
      );

  TravelCourse toDomain() => TravelCourse(
        date: date,
        time: time,
        id: id,
        x: x,
        y: y,
        placeName: placeName,
        research: research.map((e) => e.toDomain()).toList(),
      );
}

@freezed
class TravelResearchDto with _$TravelResearchDto {
  const factory TravelResearchDto({
    required String id,
    required List<String> answer,
  }) = _TravelResearchDto;

  const TravelResearchDto._();
  factory TravelResearchDto.fromJson(Map<String, dynamic> json) =>
      _$TravelResearchDtoFromJson(json);
  factory TravelResearchDto.fromDomain(TravelResearch t) => TravelResearchDto(
        id: t.id,
        answer: t.answer,
      );
  TravelResearch toDomain() => TravelResearch(
        id: id,
        answer: answer,
      );
}
