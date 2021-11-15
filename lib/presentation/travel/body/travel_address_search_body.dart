import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/_constant/widgets/theme.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';

class TravelAddressSearchBody extends StatelessWidget {
  const TravelAddressSearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context
            .read<TravelCreateBloc>()
            .add(const TravelCreateEvent.addressBottomSearched(value: true));
      },
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 2),
          color: Colors.white38,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: size.width * 0.5,
                child: Text(
                  "목적지를 입력해 주세요",
                  style: theme.textTheme.bodyText2!.copyWith(
                      color: const Color.fromRGBO(155, 155, 155, 1),
                      fontSize: 12),
                ),
              ),
              const Icon(
                Icons.search_rounded,
                color: Colors.black,
                size: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
