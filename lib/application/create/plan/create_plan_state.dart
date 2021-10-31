part of 'create_plan_bloc.dart';

@freezed
class CreatePlanState with _$CreatePlanState {
  factory CreatePlanState({
    required bool isLoading,
    required CreatePlan? plan,
    required bool isDestinationSwitch,
    required bool isAddressSearchBar,
  }) = _CreatePlanState;
  factory CreatePlanState.initial() => CreatePlanState(
        isLoading: false,
        plan: null,
        isDestinationSwitch: false,
        isAddressSearchBar: false,
      );
}
