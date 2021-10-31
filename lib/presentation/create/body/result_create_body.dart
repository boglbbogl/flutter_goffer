import 'package:flutter/material.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/presentation/create/widget/create_body_widget.dart';

class ResultCreateBody extends StatelessWidget {
  const ResultCreateBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateBodyWidget(
      isAddressSearchBar: false,
      btnText: '경로 확인하러 가기',
      onTap: () {},
      widget: Center(
          child: Text(
        'Result Create',
        style: theme.textTheme.bodyText2!.copyWith(fontSize: 40),
      )),
    );
  }
}
