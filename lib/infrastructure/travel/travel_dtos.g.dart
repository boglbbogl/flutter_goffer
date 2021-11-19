// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TravelDto _$_$_TravelDtoFromJson(Map<String, dynamic> json) {
  return _$_TravelDto(
    start: json['start'] == null
        ? null
        : TravelCourseDto.fromJson(json['start'] as Map<String, dynamic>),
    end: json['end'] == null
        ? null
        : TravelCourseDto.fromJson(json['end'] as Map<String, dynamic>),
    wayArr: (json['way_arr'] as List<dynamic>)
        .map((e) => TravelCourseDto.fromJson(e as Map<String, dynamic>))
        .toList(),
    research: json['research'] == null
        ? null
        : TravelResearchDto.fromJson(json['research'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_TravelDtoToJson(_$_TravelDto instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'way_arr': instance.wayArr,
      'research': instance.research,
    };

_$_TravelCourseDto _$_$_TravelCourseDtoFromJson(Map<String, dynamic> json) {
  return _$_TravelCourseDto(
    date: json['date'] as String,
    time: json['time'] as String,
    id: json['id'] as String,
    x: json['_x'] as String,
    y: json['_y'] as String,
    placeName: json['place_name'] as String,
  );
}

Map<String, dynamic> _$_$_TravelCourseDtoToJson(_$_TravelCourseDto instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'id': instance.id,
      '_x': instance.x,
      '_y': instance.y,
      'place_name': instance.placeName,
    };

_$_TravelResearchDto _$_$_TravelResearchDtoFromJson(Map<String, dynamic> json) {
  return _$_TravelResearchDto(
    id: json['id'] as String,
    answer: (json['answer'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_TravelResearchDtoToJson(
        _$_TravelResearchDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answer': instance.answer,
    };
