import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_goffer/domain/find_location.dart';
import 'package:flutter_goffer/domain/i_find_location_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'find_location_state.dart';
part 'find_location_cubit.freezed.dart';

@Injectable()
class FindLocationCubit extends Cubit<FindLocationState> {
  final IFindLocationRepository _findLocationRepository;
  FindLocationCubit(
    this._findLocationRepository,
  ) : super(FindLocationState.initial());

  Future<Unit> localFindLocation({
    required String keyWord,
  }) async {
    emit(state.copyWith(isLoading: true));
    final result =
        await _findLocationRepository.getLocalFindLocation(keyWord: keyWord);
    emit(state.copyWith(isLoading: false, location: result));
    return unit;
  }
}
