part of 'travel_research_cubit.dart';

@freezed
class TravelResearchState with _$TravelResearchState {
  const factory TravelResearchState({
    required ResearchQuestion? research,
    required int researchIndex,
    required List<String> createPreResearchUiControl,
    required bool isDelayTime,
  }) = _TravelResearchState;
  factory TravelResearchState.initial() => const TravelResearchState(
        research: null,
        researchIndex: 0,
        isDelayTime: false,
        createPreResearchUiControl: [],
      );
}
