import 'package:flutter_goffer/domain/find_location/find_location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_location_dtos.freezed.dart';
part 'find_location_dtos.g.dart';

@freezed
class FindLocationDto with _$FindLocationDto {
  const factory FindLocationDto({
    required String address_name,
    required String id,
    required String phone,
    required String place_name,
    required String place_url,
    required String? road_address_name,
    required String x,
    required String y,
  }) = _FindLocationDto;

  const FindLocationDto._();
  factory FindLocationDto.fromJson(Map<String, dynamic> json) =>
      _$FindLocationDtoFromJson(json);

  FindLocation toDomain() => FindLocation(
        address_name: address_name,
        id: id,
        phone: phone,
        place_name: place_name,
        place_url: place_url,
        road_address_name: road_address_name ?? "",
        x: x,
        y: y,
      );
}
