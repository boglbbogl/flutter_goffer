import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_goffer/domain/travel/i_travel_repository.dart';
import 'package:flutter_goffer/domain/travel/travel_question_research.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'travel_research_state.dart';
part 'travel_research_cubit.freezed.dart';

@Injectable()
class TravelResearchCubit extends Cubit<TravelResearchState> {
  final ITravelRepository _travelRepository;
  TravelResearchCubit(
    this._travelRepository,
  ) : super(TravelResearchState.initial());

  Future<Unit> getTravelResearch({required int id}) async {
    final research = await _travelRepository.getResearch(id: id);
    emit(state.copyWith(research: research));
    return unit;
  }

  Future<int> researchPageChanged(int index) async {
    emit(state.copyWith(researchIndex: index));
    return state.researchIndex;
  }
}
