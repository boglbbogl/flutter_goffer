import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';

class LocationSelectToggleButton extends StatelessWidget {
  final int selectedIndex;
  const LocationSelectToggleButton({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.88,
      height: size.height * 0.045,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(13)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buttonItem(
            context: context,
            index: 0,
            title: '출발지',
            radius: const BorderRadius.only(
                topLeft: Radius.circular(13), bottomLeft: Radius.circular(13)),
            border: Border.all(width: 0.5),
          ),
          _buttonItem(
            width: size.width * 0.299,
            context: context,
            title: '도착지',
            index: 1,
            radius: BorderRadius.circular(0),
            border: Border.all(width: 0.5),
          ),
          _buttonItem(
            context: context,
            index: 2,
            title: '경유지',
            radius: const BorderRadius.only(
                topRight: Radius.circular(13),
                bottomRight: Radius.circular(13)),
            border: Border.all(width: 0.5),
          ),
        ],
      ),
    );
  }

  InkWell _buttonItem({
    required BuildContext context,
    required int index,
    required BorderRadiusGeometry radius,
    required String title,
    required BoxBorder border,
    double? width,
  }) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
        context.read<FindLocationCubit>().selectedLocationBar(index: index);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: width ?? size.width * 0.289,
        height: size.height * 0.045,
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
          color: selectedIndex == index ? Colors.black : Colors.white,
        ),
        child: Center(
          child: Text(
            title,
            style: theme.textTheme.bodyText2!.copyWith(
              color: selectedIndex == index
                  ? Colors.white
                  : const Color.fromRGBO(155, 155, 155, 1),
            ),
          ),
        ),
      ),
    );
  }
}
