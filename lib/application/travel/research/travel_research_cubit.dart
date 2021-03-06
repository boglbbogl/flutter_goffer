import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_goffer/_constant/widgets/logger.dart';
import 'package:flutter_goffer/domain/research_question/i_research_question_repository.dart';
import 'package:flutter_goffer/domain/research_question/research_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'travel_research_state.dart';
part 'travel_research_cubit.freezed.dart';

@Injectable()
class TravelResearchCubit extends Cubit<TravelResearchState> {
  final IResearchQuestionRepository _researchQuestionRepository;
  TravelResearchCubit(
    this._researchQuestionRepository,
  ) : super(TravelResearchState.initial());
  Future<Unit> started() async {
    emit(state.copyWith(travelRouteResearchList: []));
    return unit;
  }

  Future<Unit> getTravelResearch({
    required int id,
  }) async {
    final research =
        await _researchQuestionRepository.getResearchQuestion(id: id);
    if (state.travelRouteResearchList.length < 3) {
      state.travelRouteResearchList.add(research!);
    }
    emit(state.copyWith(
      research: research,
    ));
    logger.e(state.travelRouteResearchList);
    return unit;
  }

  Future<int> researchPageChanged(int index) async {
    emit(state.copyWith(researchIndex: index));
    return state.researchIndex;
  }

  Future<Unit> animationDelayTime({required bool value}) async {
    emit(state.copyWith(isDelayTime: value));
    return unit;
  }
}
