import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/domain/create_plan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_plan_event.dart';
part 'create_plan_state.dart';
part 'create_plan_bloc.freezed.dart';

@Injectable()
class CreatePlanBloc extends Bloc<CreatePlanEvent, CreatePlanState> {
  CreatePlanBloc() : super(CreatePlanState.initial());

  @override
  Stream<CreatePlanState> mapEventToState(
    CreatePlanEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield state.copyWith(isLoading: true);
        final CreatePlan initialPlan = CreatePlan.empty().copyWith(
          startDate: DateTime.now().toString().substring(0, 10),
          endDate: DateTime.now().toString().substring(0, 10),
          startTime: "09 : 00",
          endTime: "09 : 00",
        );
        CreatePlanState _state;
        _state = state.copyWith(
          plan: initialPlan,
          isDestinationSwitch: false,
          isAddressSearchBar: false,
        );
        yield _state;
      },
      dateSelected: (e) async* {
        yield state.copyWith(
            plan: state.plan!.copyWith(startDate: e.start, endDate: e.end));
      },
      startTimeSelected: (e) async* {
        yield state.copyWith(plan: state.plan!.copyWith(startTime: e.start));
      },
      endTimeSelected: (e) async* {
        yield state.copyWith(plan: state.plan!.copyWith(endTime: e.end));
      },
      destinationToggleSwitched: (e) async* {
        if (state.isDestinationSwitch) {
          yield state.copyWith(isDestinationSwitch: false);
        } else {
          yield state.copyWith(isDestinationSwitch: true);
        }
      },
      addressBottomSearched: (e) async* {
        yield state.copyWith(isAddressSearchBar: e.value);
      },
    );
  }
}
