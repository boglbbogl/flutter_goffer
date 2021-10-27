import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
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

  Future<Unit> changedPage({
    required double date,
    required double destination,
    required double layover,
  }) async {
    emit(state.copyWith(
      date: date,
      destination: destination,
      layover: layover,
    ));
    return unit;
  }
}
