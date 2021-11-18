part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required bool loginState,
    required AppUser? appUser,
  }) = _AuthState;
  factory AuthState.initial() => const AuthState(
        isLoading: false,
        loginState: true,
        appUser: null,
      );
}
