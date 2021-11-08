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

  Future<Unit> mainImageChanged() async {
    return unit;
  }

  Future<Unit> planImageChanged() async {
    if (state.planIndex == 0) {}
    return unit;
  }
}
