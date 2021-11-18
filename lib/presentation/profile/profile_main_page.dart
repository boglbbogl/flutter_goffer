import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/authentication/auth_bloc/auth_bloc.dart';
import 'package:provider/provider.dart';

class ProfileMainPage extends StatelessWidget {
  const ProfileMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.watch<AuthBloc>().state.appUser!.email),
        actions: [
          TextButton(
            onPressed: () async {
              context.read<AuthBloc>().add(const AuthEvent.signOut());
            },
            child: const Text('OUT'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 200, height: 100, color: appColor),
            InkWell(
                onTap: () {
                  // logger.e(_userProvider.kakaoUser!.kakaoAccount);
                },
                child: Container(width: 200, height: 100, color: appSubColor)),
          ],
        ),
      ),
    );
  }
}
