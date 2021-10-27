part of 'create_animation_cubit.dart';

@freezed
class CreateAnimationState with _$CreateAnimationState {
  factory CreateAnimationState({
    required int switcherIndex,
    required double destination,
    required double layover,
    required double result,
  }) = _CreateAnimationState;
  factory CreateAnimationState.initial() => CreateAnimationState(
        switcherIndex: 0,
        destination: 0.0,
        layover: size.width,
        result: size.width,
      );
}
