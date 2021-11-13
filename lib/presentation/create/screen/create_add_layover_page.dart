import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';

class CreateAddLayoverPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  CreateAddLayoverPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindLocationCubit, FindLocationState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              automaticallyImplyLeading: false,
              title: Text(
                '경유지 추가하기',
                style: theme.textTheme.bodyText2!
                    .copyWith(color: appColor, fontSize: 18),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.clear_outlined,
                    color: appColor,
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Divider(
                    color: appColor,
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.8,
                  height: size.height * 0.07,
                  child: TextFormField(
                    controller: _controller,
                    style: theme.textTheme.bodyText2!
                        .copyWith(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            context
                                .read<FindLocationCubit>()
                                .apiFindLocation(keyWord: _controller.text);
                          },
                          icon: Icon(
                            Icons.search_rounded,
                            color: appColor,
                          ),
                        ),
                        hintText: '  주소를 입력해주세요',
                        hintStyle: theme.textTheme.bodyText2!
                            .copyWith(color: appColor, fontSize: 12)),
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  children: [],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
