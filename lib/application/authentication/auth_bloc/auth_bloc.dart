import 'package:bloc/bloc.dart';
import 'package:flutter_goffer/_constant/widgets/logger.dart';
import 'package:flutter_goffer/domain/auth/app_user.dart';
import 'package:flutter_goffer/domain/auth/i_app_user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kakao_flutter_sdk/all.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAppUserRepository _appUserRepository;
  AuthBloc(
    this._appUserRepository,
  ) : super(AuthState.initial());
  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        yield state.copyWith(isLoading: true);
        final OAuthToken token = await TokenManager.instance.getToken();
        if (token.refreshToken == null) {
          yield state.copyWith(loginState: false);
        } else {
          User _user;
          _user = await UserApi.instance.me();
          if (_user.kakaoAccount!.profile != null) {
            final AppUser user = AppUser(
              email: _user.kakaoAccount!.email!,
              profileUrl: _user.kakaoAccount!.profile!.thumbnailImageUrl!,
              nickName: _user.kakaoAccount!.profile!.nickname,
            );
            await _appUserRepository.getKakaoToken(
                userToken: token.accessToken!,
                userEmail: _user.kakaoAccount!.email!);
            yield state.copyWith(
                loginState: true, appUser: user, isLoading: false);
          } else {
            final AppUser user = AppUser.empty();
            yield state.copyWith(
                loginState: true, appUser: user, isLoading: false);
          }
        }
      },
      signInWithKakao: (e) async* {
        final _installed = await isKakaoTalkInstalled();
        if (!_installed) {
          try {
            final code = await AuthCodeClient.instance.request();
            final token = await AuthApi.instance.issueAccessToken(code);
            await TokenManager.instance.setToken(token);
            yield state.copyWith(
              loginState: true,
              isLoading: false,
            );
          } catch (e) {
            logger.e(e);
          }
        } else {
          try {
            final code = await AuthCodeClient.instance.requestWithTalk();
            final token = await AuthApi.instance.issueAccessToken(code);
            await TokenManager.instance.setToken(token);
            yield state.copyWith(
              loginState: true,
              isLoading: false,
            );
          } catch (e) {
            logger.e(e);
          }
        }
      },
      signInWithGoogle: (e) async* {},
      signInWithGuest: (e) async* {
        yield state.copyWith(isLoading: true);
        const AppUser appUser = AppUser(
            email: 'develop@goffer.com', profileUrl: "", nickName: "Guest");
        yield state.copyWith(
          isLoading: false,
          loginState: true,
          appUser: appUser,
        );
      },
      signOut: (e) async* {
        await UserApi.instance.logout();
        await TokenManager.instance.clear();
        yield state.copyWith(loginState: false);
      },
    );
  }
}
