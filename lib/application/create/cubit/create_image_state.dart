part of 'create_image_cubit.dart';

@freezed
class CreateImageState with _$CreateImageState {
  factory CreateImageState({
    required String planImg,
    required int planIndex,
  }) = _CreateImageState;
  factory CreateImageState.initial() => CreateImageState(
        planImg: "cappadocia",
        planIndex: 0,
      );
}
