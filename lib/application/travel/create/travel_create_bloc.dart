import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/logger.dart';
import 'package:flutter_goffer/domain/travel/i_travel_repository.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'travel_create_event.dart';
part 'travel_create_state.dart';
part 'travel_create_bloc.freezed.dart';

@Injectable()
class TravelCreateBloc extends Bloc<TravelCreateEvent, TravelCreateState> {
  final ITravelRepository _travelRepository;
  TravelCreateBloc(
    this._travelRepository,
  ) : super(TravelCreateState.initial());

  @override
  Stream<TravelCreateState> mapEventToState(
    TravelCreateEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield state.copyWith(isLoading: true);
        final TravelResearch startInitialResearch = TravelResearch.empty()
            .copyWith(
                date: DateTime.now().toString().substring(0, 10),
                time: "09 : 00");
        final TravelResearch endInitialResearch = TravelResearch.empty()
            .copyWith(
                date: DateTime.now().toString().substring(0, 10),
                time: "09 : 00");
        final Travel initialTravel = Travel.empty().copyWith(
          start: startInitialResearch,
          end: endInitialResearch,
        );
        TravelCreateState _state;
        _state = state.copyWith(
          travel: initialTravel,
          startTravel: startInitialResearch,
          endTravel: endInitialResearch,
          isColorChanged: false,
          isAddressSearchBar: false,
          isLayoverScreen: false,
        );
        yield _state;
      },
      submitted: (e) async* {
        await _travelRepository.postTravel(
            travel: state.travel!.copyWith(
          start: state.startTravel,
          end: state.endTravel,
          wayArr: state.wayTravel,
        ));
      },
      layoverSelected: (e) async* {
        yield state.copyWith(wayTravel: e.layover);
      },
      startDestinationSelected: (e) async* {
        yield state.copyWith(
            startDestination: e.destination,
            startTravel: state.startTravel!.copyWith(id: e.id, x: e.x, y: e.y));
      },
      endDestinationSelected: (e) async* {
        yield state.copyWith(
            endDestination: e.destination,
            endTravel: state.endTravel!.copyWith(id: e.id, x: e.x, y: e.y));
      },
      dateSelected: (e) async* {
        yield state.copyWith(
            startTravel: state.startTravel!.copyWith(date: e.start),
            endTravel: state.endTravel!.copyWith(date: e.end));
      },
      startTimeSelected: (e) async* {
        yield state.copyWith(
            startTravel: state.startTravel!.copyWith(time: e.start));
      },
      endTimeSelected: (e) async* {
        yield state.copyWith(endTravel: state.endTravel!.copyWith(time: e.end));
      },
      destinationToggleSwitched: (e) async* {
        if (state.isColorChanged) {
          yield state.copyWith(isColorChanged: false);
        } else {
          yield state.copyWith(isColorChanged: true);
        }
      },
      addressBottomSearched: (e) async* {
        yield state.copyWith(isAddressSearchBar: e.value);
      },
      showLayoverScreen: (e) async* {
        yield state.copyWith(isLayoverScreen: e.value);
      },
    );
  }
}
