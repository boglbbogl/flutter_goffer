part of 'travel_create_bloc.dart';

@freezed
class TravelCreateState with _$TravelCreateState {
  factory TravelCreateState({
    required bool isLoading,
    required Travel? travel,
    required TravelResearch? startTravel,
    required TravelResearch? endTravel,
    required List<TravelResearch> wayTravel,
    required bool isColorChanged,
    required bool isAddressSearchBar,
    required bool isLayoverScreen,
    required String startDestination,
    required String endDestination,
  }) = _TravelCreateState;
  factory TravelCreateState.initial() => TravelCreateState(
        isLoading: false,
        travel: null,
        startTravel: null,
        endTravel: null,
        wayTravel: [],
        isColorChanged: false,
        isAddressSearchBar: false,
        isLayoverScreen: false,
        startDestination: "",
        endDestination: "",
      );
}
