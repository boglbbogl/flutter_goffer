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
      emit(state.copyWith(planIndex: 0, planImg: 'cappadocia'));
    } else {
      emit(state.copyWith(planImg: 'cappadocia'));
    }
    return unit;
  }
}
