part of 'travel_create_bloc.dart';

@freezed
class TravelCreateEvent with _$TravelCreateEvent {
  const factory TravelCreateEvent.started() = _Started;
  const factory TravelCreateEvent.submitted() = _Submitted;
  const factory TravelCreateEvent.dateSelected({
    required String start,
    required String end,
  }) = _DateSelected;
  const factory TravelCreateEvent.startTimeSelected({required String start}) =
      _StartTimeSelected;
  const factory TravelCreateEvent.startDestinationSelected({
    required String x,
    required String y,
    required String id,
    required String destination,
  }) = _StartDestinationSelected;
  const factory TravelCreateEvent.endDestinationSelected({
    required String x,
    required String y,
    required String id,
    required String destination,
  }) = _EndDestinationSelected;
  const factory TravelCreateEvent.endTimeSelected({required String end}) =
      _EndTimeSelected;
  const factory TravelCreateEvent.destinationToggleSwitched() =
      _DestinationToggleSwitched;
  const factory TravelCreateEvent.addressBottomSearched({
    required bool value,
  }) = _AdressBottomSearched;
}
