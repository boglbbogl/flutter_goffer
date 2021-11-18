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
    required List<TravelResearch> wayAddAndRemoveList,
    required bool isDateAndTimeSearchBar,
    required bool isAddressSearchBar,
    required bool isLayoverAddressBar,
    required bool isSelectedTourist,
  }) = _TravelCreateState;
  factory TravelCreateState.initial() => TravelCreateState(
        isLoading: false,
        submitResult: null,
        travel: null,
        startTravel: null,
        endTravel: null,
        wayTravel: [],
        wayAddAndRemoveList: [],
        isDateAndTimeSearchBar: false,
        isAddressSearchBar: false,
        isLayoverAddressBar: false,
        isSelectedTourist: false,
      );
}
