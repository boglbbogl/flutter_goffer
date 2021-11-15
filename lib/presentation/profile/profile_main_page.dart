import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/logger.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/authentication/auth_provider/user_provider.dart';
import 'package:provider/provider.dart';

class ProfileMainPage extends StatelessWidget {
  const ProfileMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserProvider _userProvider =
        Provider.of<UserProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(_userProvider.kakaoUser == null
            ? 'Profile'
            : _userProvider.kakaoUser!.kakaoAccount!.email.toString()),
        actions: [
          IconButton(
              onPressed: () async {
                await _userProvider.logOut;
              },
              icon: const Icon(Icons.logout_rounded,
                  color: Color.fromRGBO(71, 71, 71, 1))),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 200, height: 100, color: appColor),
            InkWell(
                onTap: () {
                  logger.e(_userProvider.kakaoUser!.kakaoAccount);
                },
                child: Container(width: 200, height: 100, color: appSubColor)),
            CircleAvatar(
              radius: 30,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipOval(
                  child: ExtendedImage.network(_userProvider
                      .kakaoUser!.kakaoAccount!.profile!.thumbnailImageUrl!),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
