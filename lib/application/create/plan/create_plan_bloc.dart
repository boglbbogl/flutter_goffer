import 'package:bloc/bloc.dart';
import 'package:flutter_goffer/application/domain/create/create_plan.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_plan_event.dart';
part 'create_plan_state.dart';
part 'create_plan_bloc.freezed.dart';

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
          startTime: "09:00",
          endTime: "09:00",
        );
        CreatePlanState _state;
        _state = state.copyWith(
          plan: initialPlan,
        );
        yield _state;
      },
      dateSelected: (e) async* {
        yield state.copyWith(
            plan: state.plan!.copyWith(startDate: e.start, endDate: e.end));
      },
      timeSelected: (e) async* {},
    );
  }
}
