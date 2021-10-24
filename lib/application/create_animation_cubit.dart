import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_animation_state.dart';
part 'create_animation_cubit.freezed.dart';

@Injectable()
class CreateAnimationCubit extends Cubit<CreateAnimationState> {
  CreateAnimationCubit() : super(CreateAnimationState.initial());

  Future<Unit> started() async {
    emit(state.copyWith(startAnimation: false));
    return unit;
  }

  Future<Unit> startAnimation() async {
    emit(state.copyWith(startAnimation: true));
    return unit;
  }
}
