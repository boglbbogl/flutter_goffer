import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_image_state.dart';
part 'create_image_cubit.freezed.dart';

// background Image -> Server 작업 완료 시 사용안함
@Injectable()
class CreateImageCubit extends Cubit<CreateImageState> {
  CreateImageCubit() : super(CreateImageState.initial());

  Future<Unit> start() async {
    emit(state.copyWith(planImg: 'cappadocia'));
    return unit;
  }

  Future<Unit> mainImageChanged() async {
    return unit;
  }

  Future<Unit> planImageChanged({required int index}) async {
    if (index == 0) {
      emit(state.copyWith(planIndex: 1, planImg: 'anabji'));
    } else if (index == 1) {
      emit(state.copyWith(planIndex: 2, planImg: 'dolsan'));
    } else if (index == 2) {
      emit(state.copyWith(planIndex: 3, planImg: 'anabji_night'));
    } else if (index == 3) {
      emit(state.copyWith(planIndex: 4, planImg: 'kyungbok'));
    } else if (index == 4) {
      emit(state.copyWith(planIndex: 5, planImg: 'hanok'));
    } else if (index == 5) {
      emit(state.copyWith(planIndex: 6, planImg: 'kyungbok_night'));
    } else if (index == 6) {
      emit(state.copyWith(planIndex: 7, planImg: 'night'));
    } else if (index == 7) {
      emit(state.copyWith(planIndex: 8, planImg: 'seoul_night'));
    } else if (index == 8) {
      emit(state.copyWith(planIndex: 9, planImg: 'winter'));
    } else if (index == 9) {
      emit(state.copyWith(planIndex: 0, planImg: 'cappadocia'));
    } else {
      emit(state.copyWith(planImg: 'cappadocia'));
    }
    return unit;
  }
}
