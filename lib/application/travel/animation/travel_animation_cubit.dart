import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'travel_animation_state.dart';
part 'travel_animation_cubit.freezed.dart';

@Injectable()
class TravelAnimationCubit extends Cubit<TravelAnimationState> {
  TravelAnimationCubit() : super(TravelAnimationState.initial());

  Future<Unit> started() async {
    emit(state.copyWith(switcherIndex: 0, isExpandable: false));
    return unit;
  }

  Future<Unit> startAnimation({
    required int index,
  }) async {
    emit(state.copyWith(switcherIndex: index));
    return unit;
  }

  Future<Unit> dateAndTimeExpandable() async {
    if (state.isExpandable) {
      emit(state.copyWith(isExpandable: false));
    } else {
      emit(state.copyWith(isExpandable: true));
    }
    return unit;
  }
}
