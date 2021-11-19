part of 'travel_create_bloc.dart';

@freezed
class TravelCreateState with _$TravelCreateState {
  factory TravelCreateState({
    required bool isLoading,
    required Either<TravelFailure, Unit>? submitResult,
    required Travel? travel,
    required TravelCourse? startTravel,
    required TravelCourse? endTravel,
    required List<TravelCourse> wayTravel,
    required List<TravelCourse> wayAddAndRemoveList,
    required List<TravelResearch> preResearch,
    required TravelResearch? travelResearch,
    required bool isDateAndTimeSearchBar,
    required bool isAddressSearchBar,
    required bool isLayoverAddressBar,
    required bool isSelectedTourist,
    required int selectedTogglButtonIndex,
  }) = _TravelCreateState;
  factory TravelCreateState.initial() => TravelCreateState(
        isLoading: false,
        submitResult: null,
        travel: null,
        startTravel: null,
        endTravel: null,
        wayTravel: [],
        wayAddAndRemoveList: [],
        preResearch: [],
        travelResearch: null,
        isDateAndTimeSearchBar: false,
        isAddressSearchBar: false,
        isLayoverAddressBar: false,
        isSelectedTourist: false,
        selectedTogglButtonIndex: 0,
      );
}
