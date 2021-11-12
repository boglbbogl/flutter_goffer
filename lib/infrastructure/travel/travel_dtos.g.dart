// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelDto _$_$_TravelDtoFromJson(Map<String, dynamic> json) {
  return _$_TravelDto(
    start: json['start'] == null
        ? null
        : TravelResearchDto.fromJson(json['start'] as Map<String, dynamic>),
    end: json['end'] == null
        ? null
        : TravelResearchDto.fromJson(json['end'] as Map<String, dynamic>),
    wayArr: (json['way_arr'] as List<dynamic>)
        .map((e) => TravelResearchDto.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TravelDtoToJson(_$_TravelDto instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'way_arr': instance.wayArr,
    };

_$_TravelResearchDto _$_$_TravelResearchDtoFromJson(Map<String, dynamic> json) {
  return _$_TravelResearchDto(
    date: json['date'] as String,
    time: json['time'] as String,
    id: json['id'] as String,
    x: json['_x'] as String,
    y: json['_y'] as String,
  );
}

Map<String, dynamic> _$_$_TravelResearchDtoToJson(
        _$_TravelResearchDto instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'id': instance.id,
      '_x': instance.x,
      '_y': instance.y,
    };
