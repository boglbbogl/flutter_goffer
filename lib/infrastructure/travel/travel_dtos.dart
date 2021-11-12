import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_dtos.freezed.dart';
part 'travel_dtos.g.dart';

@freezed
class TravelDto with _$TravelDto {
  const factory TravelDto({
    required TravelResearchDto? start,
    required TravelResearchDto? end,
    @JsonKey(name: 'way_arr') required List<TravelResearchDto> wayArr,
  }) = _TravelDto;
  const TravelDto._();
  factory TravelDto.fromJson(Map<String, dynamic> json) =>
      _$TravelDtoFromJson(json);
  factory TravelDto.fromDomain(Travel t) => TravelDto(
        start: TravelResearchDto.fromDomain(t.start!),
        end: TravelResearchDto.fromDomain(t.end!),
        wayArr: t.wayArr.map((e) => TravelResearchDto.fromDomain(e)).toList(),
      );

  Travel toDomain() => Travel(
        start: start!.toDomain(),
        end: end!.toDomain(),
        wayArr: wayArr.map((e) => e.toDomain()).toList(),
      );
}

@freezed
class TravelResearchDto with _$TravelResearchDto {
  const factory TravelResearchDto({
    required String date,
    required String time,
    required String id,
    @JsonKey(name: '_x') required String x,
    @JsonKey(name: '_y') required String y,
  }) = _TravelResearchDto;
  const TravelResearchDto._();
  factory TravelResearchDto.fromJson(Map<String, dynamic> json) =>
      _$TravelResearchDtoFromJson(json);

  factory TravelResearchDto.fromDomain(TravelResearch r) => TravelResearchDto(
        date: r.date,
        time: r.time,
        id: r.id,
        x: r.x,
        y: r.y,
      );

  TravelResearch toDomain() => TravelResearch(
        date: date,
        time: time,
        id: id,
        x: x,
        y: y,
      );
}
