part of 'find_location_cubit.dart';

@freezed
class FindLocationState with _$FindLocationState {
  factory FindLocationState({
    required bool isLoading,
    required List<FindLocation> location,
    required bool isMore,
    required int selectedIndex,
  }) = _FindLocationState;
  factory FindLocationState.initial() => FindLocationState(
        isLoading: false,
        location: [],
        selectedIndex: 0,
        isMore: false,
      );
}
