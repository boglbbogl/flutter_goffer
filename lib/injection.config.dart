// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/authentication/auth_bloc/auth_bloc.dart' as _i3;
import 'application/authentication/sign_in/sign_in_bloc.dart' as _i8;
import 'application/find_location/find_location_cubit.dart' as _i11;
import 'application/travel/animation/travel_animation_cubit.dart' as _i9;
import 'application/travel/create/travel_create_bloc.dart' as _i10;
import 'domain/find_location/i_find_location_repository.dart' as _i4;
import 'domain/travel/i_travel_repository.dart' as _i6;
import 'infrastructure/find_location/find_location_repository.dart' as _i5;
import 'infrastructure/travel/travel_repository.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.lazySingleton<_i4.IFindLocationRepository>(
      () => _i5.FindLocationRepository());
  gh.lazySingleton<_i6.ITravelRepository>(() => _i7.TravelRepository());
  gh.factory<_i8.SignInBloc>(() => _i8.SignInBloc());
  gh.factory<_i9.TravelAnimationCubit>(() => _i9.TravelAnimationCubit());
  gh.factory<_i10.TravelCreateBloc>(
      () => _i10.TravelCreateBloc(get<_i6.ITravelRepository>()));
  gh.factory<_i11.FindLocationCubit>(
      () => _i11.FindLocationCubit(get<_i4.IFindLocationRepository>()));
  return get;
}
