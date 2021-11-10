import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_goffer/application/authentication/auth_provider/user_provider.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserProvider _userProvider =
        Provider.of<UserProvider>(context, listen: false);
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Opacity(
              opacity: 0.3,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ExtendedImage.asset(
                  'assets/images/main/create_main2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'GOFFER',
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: const Color.fromRGBO(247, 82, 142, 1),
                          fontSize: 30),
                    ),
                    Column(
                      children: [
                        _signInBtnForm(
                            context: context,
                            title: '게스트 로그인',
                            btnColor: const Color.fromRGBO(247, 82, 142, 1),
                            icon: Icons.airplane_ticket,
                            titleColor: Colors.black,
                            onTap: () {
                              _userProvider.setUserAuth(authState: true);
                            }),
                        const SizedBox(height: 25),
                        _signInBtnForm(
                            context: context,
                            title: '카카오 로그인',
                            btnColor: Colors.amber,
                            icon: Icons.chat_bubble,
                            titleColor: Colors.brown,
                            onTap: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  InkWell _signInBtnForm({
    required BuildContext context,
    required Function() onTap,
    required Color btnColor,
    required String title,
    required IconData icon,
    required Color titleColor,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.07,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: btnColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: titleColor,
                size: 28,
              ),
              const SizedBox(width: 20),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: titleColor, fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
