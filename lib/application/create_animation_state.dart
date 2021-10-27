part of 'create_animation_cubit.dart';

@freezed
class CreateAnimationState with _$CreateAnimationState {
  factory CreateAnimationState({
    required bool startAnimation,
    required double date,
    required double destination,
    required double layover,
    required double result,
  }) = _CreateAnimationState;
  factory CreateAnimationState.initial() => CreateAnimationState(
        startAnimation: false,
        date: 0.0,
        destination: size.width,
        layover: size.width,
        result: size.width,
      );
}
