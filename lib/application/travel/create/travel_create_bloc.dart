import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/logger.dart';
import 'package:flutter_goffer/domain/research_question/research_question.dart';
import 'package:flutter_goffer/domain/travel/i_travel_repository.dart';
import 'package:flutter_goffer/domain/travel/travel.dart';
import 'package:flutter_goffer/domain/travel/travel_failure.dart';
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
        final TravelCourse startInitialResearch = TravelCourse.empty().copyWith(
            date: DateTime.now().toString().substring(0, 10), time: "09 : 00");
        final TravelCourse endInitialResearch = TravelCourse.empty().copyWith(
            date: DateTime.now().toString().substring(0, 10), time: "09 : 00");

        final Travel initialTravel = Travel.empty().copyWith(
          start: startInitialResearch,
          end: endInitialResearch,
          wayArr: [],
          preResearch: [],
        );

        TravelCreateState _state;
        _state = state.copyWith(
          travel: initialTravel,
          startTravel: startInitialResearch,
          endTravel: endInitialResearch,
          preResearch: [],
          wayTravel: [],
          wayAddAndRemoveList: [],
          isAddressSearchBar: false,
          isLayoverAddressBar: false,
        );
        yield _state;
      },
      submitted: (e) async* {
        yield state.copyWith(isLoading: true);
        final result = await _travelRepository.postTravel(
            travel: state.travel!.copyWith(
          start: state.startTravel,
          end: state.endTravel,
          wayArr: state.wayTravel,
          preResearch: state.preResearch,
        ));
        yield state.copyWith(isLoading: false, submitResult: result);
      },
      layoverSelected: (e) async* {
        // final List<TravelResearch> list = [];
        logger.e(state.wayAddAndRemoveList);
        yield state.copyWith(wayAddAndRemoveList: state.wayTravel);
        if (state.wayAddAndRemoveList.map((e) => e.id).contains(e.layover.id)) {
          state.wayAddAndRemoveList.remove(e.layover);
          yield state.copyWith(
              wayTravel: state.wayAddAndRemoveList,
              isSelectedTourist: state.isSelectedTourist ? false : true);
        } else {
          state.wayAddAndRemoveList.add(e.layover);

          yield state.copyWith(
              wayTravel: state.wayAddAndRemoveList,
              isSelectedTourist: state.isSelectedTourist ? false : true);
        }
      },
      preResearchSelected: (e) async* {
        state.preResearch.add(e.research);
        logger.e(state.preResearch);
        // yield state.copyWith(preResearch: state.preResearch);
      },
      startDestinationSelected: (e) async* {
        if (state.startTravel!.id.contains(e.id)) {
          yield state.copyWith(
              startTravel: TravelCourse.empty().copyWith(
                  id: "",
                  x: "",
                  y: "",
                  placeName: "",
                  date: state.startTravel!.date));
        } else {
          yield state.copyWith(
              startTravel: state.startTravel!
                  .copyWith(id: e.id, x: e.x, y: e.y, placeName: e.placeName));
        }
      },
      endDestinationSelected: (e) async* {
        if (state.endTravel!.id.contains(e.id)) {
          yield state.copyWith(
              endTravel: TravelCourse.empty().copyWith(
                  id: "",
                  x: "",
                  y: "",
                  placeName: "",
                  date: state.endTravel!.date));
        } else {
          yield state.copyWith(
              endTravel: state.endTravel!
                  .copyWith(id: e.id, x: e.x, y: e.y, placeName: e.placeName));
        }
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
      dateAndTimeBottomBar: (e) async* {
        yield state.copyWith(isDateAndTimeSearchBar: e.value);
      },
      addressBottomSearched: (e) async* {
        yield state.copyWith(isAddressSearchBar: e.value);
      },
      locationToggleButton: (e) async* {
        yield state.copyWith(selectedTogglButtonIndex: e.index);
      },
    );
  }
}
