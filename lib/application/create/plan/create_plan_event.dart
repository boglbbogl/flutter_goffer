part of 'create_plan_bloc.dart';

@freezed
class CreatePlanEvent with _$CreatePlanEvent {
  const factory CreatePlanEvent.started() = _Started;
  const factory CreatePlanEvent.dateSelected({
    required DateTime start,
    required DateTime end,
  }) = _DateSelected;
  const factory CreatePlanEvent.timeSelected() = _TimeSelected;
}
