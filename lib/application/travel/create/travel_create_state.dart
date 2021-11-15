part of 'travel_create_bloc.dart';

@freezed
class TravelCreateState with _$TravelCreateState {
  factory TravelCreateState({
    required bool isLoading,
    required Either<TravelFailure, Unit>? submitResult,
    required Travel? travel,
    required TravelResearch? startTravel,
    required TravelResearch? endTravel,
    required List<TravelResearch> wayTravel,
    required bool isDateAndTimeSearchBar,
    required bool isAddressSearchBar,
    required bool isLayoverAddressBar,
    required String startDestination,
    required String endDestination,
  }) = _TravelCreateState;
  factory TravelCreateState.initial() => TravelCreateState(
        isLoading: false,
        submitResult: null,
        travel: null,
        startTravel: null,
        endTravel: null,
        wayTravel: [],
        isDateAndTimeSearchBar: false,
        isAddressSearchBar: false,
        isLayoverAddressBar: false,
        startDestination: "",
        endDestination: "",
      );
}
