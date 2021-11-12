part of 'travel_animation_cubit.dart';

@freezed
class TravelAnimationState with _$TravelAnimationState {
  factory TravelAnimationState({
    required int switcherIndex,
    required bool isExpandable,
    required double destination,
    required double layover,
    required double result,
  }) = _TravelAnimationState;
  factory TravelAnimationState.initial() => TravelAnimationState(
        switcherIndex: 0,
        isExpandable: false,
        destination: 0.0,
        layover: size.width,
        result: size.width,
      );
}
