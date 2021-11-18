import 'package:flutter_goffer/_constant/_flavor/config_reader.dart';
import 'package:flutter_goffer/_constant/widgets/logger.dart';
import 'package:flutter_goffer/domain/auth/app_user.dart';
import 'package:flutter_goffer/domain/auth/i_app_user_repository.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAppUserRepository)
class AppUserRepository implements IAppUserRepository {
  static String apiBaseUrl = ConfigReader.getAwsApiBase();

  @override
  Future<KakaoToken?> getKakaoToken({
    required String userToken,
    required String userEmail,
  }) async {
    try {
      final url = Uri.parse(
          '$apiBaseUrl/oauth/kakao?user_token=$userToken&user_email=$userEmail');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        logger.d('Token Success !!');
      } else if (response.statusCode == 401) {
        logger.e('Token Failure !!');
      }
    } catch (error) {
      return null;
    }
  }
}
