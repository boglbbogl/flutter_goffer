part of 'travel_animation_cubit.dart';

@freezed
class TravelAnimationState with _$TravelAnimationState {
  factory TravelAnimationState({
    required int switcherIndex,
    required bool isExpandable,
  }) = _TravelAnimationState;
  factory TravelAnimationState.initial() => TravelAnimationState(
        switcherIndex: 0,
        isExpandable: false,
      );
}
