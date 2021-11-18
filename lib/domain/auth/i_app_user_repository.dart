import 'package:flutter_goffer/domain/auth/app_user.dart';

abstract class IAppUserRepository {
  Future<KakaoToken?> getKakaoToken({
    required String userToken,
    required String userEmail,
  });
}
