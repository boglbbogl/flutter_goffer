import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_location.freezed.dart';

@freezed
class FindLocation with _$FindLocation {
  const factory FindLocation({
    required String address_name,
    required String id,
    required String phone,
    required String place_name,
    required String place_url,
    required String? road_address_name,
    required String x,
    required String y,
  }) = _FindLocation;
  factory FindLocation.empty() => const FindLocation(
        address_name: "",
        id: "",
        phone: "",
        place_name: "",
        place_url: "",
        road_address_name: "",
        x: "",
        y: "",
      );
}
