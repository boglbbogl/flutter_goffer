import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String email,
    required String profileUrl,
    required String nickName,
  }) = _AppUser;

  factory AppUser.empty() => const AppUser(
        email: "",
        profileUrl: "",
        nickName: "",
      );
}

@freezed
class KakaoToken with _$KakaoToken {
  const factory KakaoToken({
    required String userToken,
    required String userEmail,
  }) = _KakaoToken;
}
