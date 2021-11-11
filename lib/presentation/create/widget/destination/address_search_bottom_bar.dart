import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/create/plan/create_plan_bloc.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/presentation/create/widget/destination/address_list_view.dart';

class AdressSearchBottomBar extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final bool isAddressSearchBar;
  final bool isColorChanged;
  AdressSearchBottomBar({
    Key? key,
    required this.isAddressSearchBar,
    required this.isColorChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform:
          Matrix4.translationValues(0, isAddressSearchBar ? 0 : size.height, 0),
      duration: const Duration(milliseconds: 300),
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                FocusScope.of(context).unfocus();
                context.read<CreatePlanBloc>().add(
                    const CreatePlanEvent.addressBottomSearched(value: false));
              },
              child: Container(
                color: isAddressSearchBar ? Colors.white60 : Colors.white12,
                height: size.height * 0.50,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.width,
                height: size.height * 0.85,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22)),
                  color: Colors.white,
                  // color: isColorChanged ? appSubColor : appColor,
                ),
                child: Column(
                  children: [
                    InkWell(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          context.read<CreatePlanBloc>().add(
                              const CreatePlanEvent.addressBottomSearched(
                                  value: false));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: SizedBox(
                            width: size.width,
                            child: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 28,
                              color: isColorChanged ? appSubColor : appColor,
                            ),
                          ),
                        )),
                    Container(
                      width: size.width * 0.9,
                      height: size.height * 0.075,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(
                              width: 2,
                              color: isColorChanged ? appSubColor : appColor)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: size.width * 0.6,
                              height: size.height * 0.07,
                              child: Center(
                                child: TextFormField(
                                  controller: _controller,
                                  style: theme.textTheme.bodyText2!
                                      .copyWith(color: Colors.black),
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                      hintText: '  주소를 입력해주세요',
                                      hintStyle: theme.textTheme.bodyText2!
                                          .copyWith(
                                              color: !isColorChanged
                                                  ? appColor
                                                  : appSubColor,
                                              fontSize: 12)),
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: isColorChanged
                                          ? appSubColor
                                          : appColor,
                                      width: 1.2),
                                  borderRadius: BorderRadius.circular(18),
                                  color:
                                      isColorChanged ? appSubColor : appColor,
                                ),
                                child: InkWell(
                                    onTap: () {
                                      FocusScope.of(context).unfocus();
                                      context
                                          .read<FindLocationCubit>()
                                          .localFindLocation(
                                              keyWord: _controller.text);
                                    },
                                    child: const Icon(
                                      Icons.search_rounded,
                                      color: Colors.white,
                                      size: 50,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AddressListView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
