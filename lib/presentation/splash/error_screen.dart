import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';

//로그인 기능 추가시 로그인 router 설정 완료

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            color: appColor,
          ),
        ],
      ),
    );
  }
}
