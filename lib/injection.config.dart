// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/authentication/auth_bloc/auth_bloc.dart' as _i11;
import 'application/find_location/find_location_cubit.dart' as _i12;
import 'application/travel/animation/travel_animation_cubit.dart' as _i9;
import 'application/travel/create/travel_create_bloc.dart' as _i10;
import 'domain/auth/i_app_user_repository.dart' as _i3;
import 'domain/find_location/i_find_location_repository.dart' as _i5;
import 'domain/travel/i_travel_repository.dart' as _i7;
import 'infrastructure/auth/app_user_repository.dart' as _i4;
import 'infrastructure/find_location/find_location_repository.dart' as _i6;
import 'infrastructure/travel/travel_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAppUserRepository>(() => _i4.AppUserRepository());
  gh.lazySingleton<_i5.IFindLocationRepository>(
      () => _i6.FindLocationRepository());
  gh.lazySingleton<_i7.ITravelRepository>(() => _i8.TravelRepository());
  gh.factory<_i9.TravelAnimationCubit>(() => _i9.TravelAnimationCubit());
  gh.factory<_i10.TravelCreateBloc>(
      () => _i10.TravelCreateBloc(get<_i7.ITravelRepository>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i3.IAppUserRepository>()));
  gh.factory<_i12.FindLocationCubit>(
      () => _i12.FindLocationCubit(get<_i5.IFindLocationRepository>()));
  return get;
}
