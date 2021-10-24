part of 'create_animation_cubit.dart';

@freezed
class CreateAnimationState with _$CreateAnimationState {
  factory CreateAnimationState({
    required bool startAnimation,
  }) = _CreateAnimationState;
  factory CreateAnimationState.initial() => CreateAnimationState(
        startAnimation: false,
      );
}
