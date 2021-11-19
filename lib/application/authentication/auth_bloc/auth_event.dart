part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
  const factory AuthEvent.signInWithKakao() = SignInWithKakao;
  const factory AuthEvent.signInWithGoogle() = SignInWithGoogle;
  const factory AuthEvent.signInWithGuest() = SignInWithGuest;
  const factory AuthEvent.signOut() = SignOut;
}
