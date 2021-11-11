// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_location_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FindLocationDto _$_$_FindLocationDtoFromJson(Map<String, dynamic> json) {
  return _$_FindLocationDto(
    address_name: json['address_name'] as String,
    id: json['id'] as String,
    phone: json['phone'] as String,
    place_name: json['place_name'] as String,
    place_url: json['place_url'] as String,
    road_address_name: json['road_address_name'] as String?,
    x: json['x'] as String,
    y: json['y'] as String,
  );
}

Map<String, dynamic> _$_$_FindLocationDtoToJson(_$_FindLocationDto instance) =>
    <String, dynamic>{
      'address_name': instance.address_name,
      'id': instance.id,
      'phone': instance.phone,
      'place_name': instance.place_name,
      'place_url': instance.place_url,
      'road_address_name': instance.road_address_name,
      'x': instance.x,
      'y': instance.y,
    };
