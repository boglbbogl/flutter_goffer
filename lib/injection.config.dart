// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/authentication/auth_bloc/auth_bloc.dart' as _i14;
import 'application/find_location/find_location_cubit.dart' as _i15;
import 'application/travel/animation/travel_animation_cubit.dart' as _i11;
import 'application/travel/create/travel_create_bloc.dart' as _i12;
import 'application/travel/research/travel_research_cubit.dart' as _i13;
import 'domain/auth/i_app_user_repository.dart' as _i3;
import 'domain/find_location/i_find_location_repository.dart' as _i5;
import 'domain/research_question/i_research_question_repository.dart' as _i7;
import 'domain/travel/i_travel_repository.dart' as _i9;
import 'infrastructure/auth/app_user_repository.dart' as _i4;
import 'infrastructure/find_location/find_location_repository.dart' as _i6;
import 'infrastructure/research_question/research_question_repositoy.dart'
    as _i8;
import 'infrastructure/travel/travel_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAppUserRepository>(() => _i4.AppUserRepository());
  gh.lazySingleton<_i5.IFindLocationRepository>(
      () => _i6.FindLocationRepository());
  gh.lazySingleton<_i7.IResearchQuestionRepository>(
      () => _i8.ResearchQuestionRepository());
  gh.lazySingleton<_i9.ITravelRepository>(() => _i10.TravelRepository());
  gh.factory<_i11.TravelAnimationCubit>(() => _i11.TravelAnimationCubit());
  gh.factory<_i12.TravelCreateBloc>(
      () => _i12.TravelCreateBloc(get<_i9.ITravelRepository>()));
  gh.factory<_i13.TravelResearchCubit>(
      () => _i13.TravelResearchCubit(get<_i7.IResearchQuestionRepository>()));
  gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(get<_i3.IAppUserRepository>()));
  gh.factory<_i15.FindLocationCubit>(
      () => _i15.FindLocationCubit(get<_i5.IFindLocationRepository>()));
  return get;
}
