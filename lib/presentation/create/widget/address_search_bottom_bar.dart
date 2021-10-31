import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/plan/create_plan_bloc.dart';

class AdressSearchBottomBar extends StatelessWidget {
  const AdressSearchBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
          width: size.width,
          height: size.height * 0.85,
          color: Colors.white,
          child: Column(
            children: [
              InkWell(
                  onTap: () => context.read<CreatePlanBloc>().add(
                      const CreatePlanEvent.addressBottomSearched(
                          value: false)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: SizedBox(
                      width: size.width,
                      child: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 28,
                        color: appColor,
                      ),
                    ),
                  )),
              Container(
                width: size.width * 0.9,
                height: size.height * 0.075,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(width: 2, color: appColor)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * 0.6,
                        height: size.height * 0.07,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: '주소를 입력해주세요',
                              hintStyle: theme.textTheme.bodyText2!.copyWith(
                                  color:
                                      const Color.fromRGBO(175, 175, 175, 1))),
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.search_rounded,
                            color: appColor,
                            size: 28,
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
