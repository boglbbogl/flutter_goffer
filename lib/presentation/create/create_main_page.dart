import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create_animation_cubit.dart';
import 'package:flutter_goffer/presentation/create/create_date_select_page.dart';

class CreateMainPage extends StatelessWidget {
  const CreateMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateAnimationCubit>(
      create: (context) => CreateAnimationCubit()..started(),
      child: BlocBuilder<CreateAnimationCubit, CreateAnimationState>(
        builder: (context, state) {
          return AnimatedSwitcher(
              duration: const Duration(milliseconds: 1500),
              child: !state.startAnimation
                  ? Scaffold(
                      backgroundColor: Colors.deepPurple,
                      bottomNavigationBar: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 20, right: 20, left: 20),
                        child: InkWell(
                          onTap: () => context
                              .read<CreateAnimationCubit>()
                              .startAnimation(),
                          child: Container(
                            height: size.height * 0.08,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Colors.amber),
                            child: Center(
                                child: Text(
                              '시작하기',
                              style: theme.textTheme.bodyText2!.copyWith(
                                  color: Colors.deepPurple,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      ),
                      body: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: size.height * 0.1),
                          titleForm(
                              title: '나만의 일정을', leftPadding: 30, topPadding: 0),
                          titleForm(
                              title: '만드시겠습니까 ?',
                              leftPadding: 70,
                              topPadding: 20),
                        ],
                      ),
                    )
                  : const CreateDateSelectPage());
        },
      ),
    );
  }

  Padding titleForm({
    required String title,
    required double leftPadding,
    required double topPadding,
  }) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding, top: topPadding),
      child: Text(
        title,
        style: theme.textTheme.bodyText2!.copyWith(
            color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 40),
      ),
    );
  }
}
