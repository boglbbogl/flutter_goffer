import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/logger.dart';
import 'package:kakao_flutter_sdk/all.dart';
import 'package:kakao_flutter_sdk/auth.dart';

class UserProvider extends ChangeNotifier {
  UserProvider() {
    _userStatus();
  }
  bool _isKakaoTalkInstalled = true;

  Future<void> _userStatus() async {
    final OAuthToken token = await TokenManager.instance.getToken();
    logger.e(token);
    if (token.refreshToken == null) {
      _isLogin = false;
      notifyListeners();
    } else {
      _isLogin = true;
      notifyListeners();
    }
  }

  bool _isLogin = false;
  Future<void> _kakaoSignOut() async {
    // await UserApi.instance.unlink();
    await UserApi.instance.logout();
    await TokenManager.instance.clear();

    _isLogin = false;
    notifyListeners();
  }

  Future<void> _kakaoSignIn() async {
    _initKakaoTalkInstalled();
    if (_isKakaoTalkInstalled) {
      await _loginWithKakaoTalk();
    } else {
      await _loginWithKakaoWeb();
    }
  }

  Future<void> _initKakaoTalkInstalled() async {
    final installed = await isKakaoTalkInstalled();
    _isKakaoTalkInstalled = installed;
  }

  Future<void> _loginWithKakaoWeb() async {
    try {
      final code = await AuthCodeClient.instance.request();
      await _issueAccessToken(code);
      _isLogin = true;
      notifyListeners();
    } catch (e) {
      logger.e(e);
    }
  }

  Future<void> _loginWithKakaoTalk() async {
    try {
      final code = await AuthCodeClient.instance.requestWithTalk();
      await _issueAccessToken(code);
      _isLogin = true;
      notifyListeners();
    } catch (e) {
      logger.e(e);
    }
  }

  Future _issueAccessToken(String authCode) async {
    try {
      final token = await AuthApi.instance.issueAccessToken(authCode);
      await TokenManager.instance.setToken(token);
    } catch (e) {
      logger.e("error on issuing access token: $e");
    }
  }

  bool get loginState => _isLogin;

  Future<void> get logOut => _kakaoSignOut();
  Future<void> get logIn => _kakaoSignIn();
}
