import 'package:freezed_annotation/freezed_annotation.dart';

part 'travel_failure.freezed.dart';

@freezed
class TravelFailure with _$TravelFailure {
  const factory TravelFailure.notFound() = _NotFound;
  const factory TravelFailure.serverError() = _ServerError;
}
