// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/authentication/auth_bloc/auth_bloc.dart' as _i3;
import 'application/authentication/sign_in/sign_in_bloc.dart' as _i6;
import 'application/create/animation/create_animation_cubit.dart' as _i4;
import 'application/create/plan/create_plan_bloc.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.factory<_i4.CreateAnimationCubit>(() => _i4.CreateAnimationCubit());
  gh.factory<_i5.CreatePlanBloc>(() => _i5.CreatePlanBloc());
  gh.factory<_i6.SignInBloc>(() => _i6.SignInBloc());
  return get;
}
