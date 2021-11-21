import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_goffer/application/authentication/auth_bloc/auth_bloc.dart';
import 'package:flutter_goffer/application/find_location/find_location_cubit.dart';
import 'package:flutter_goffer/application/travel/create/travel_create_bloc.dart';
import 'package:flutter_goffer/application/travel/research/travel_research_cubit.dart';
import 'package:flutter_goffer/injection.dart';
import 'package:flutter_goffer/presentation/_main/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// App Start

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthCheckRequested())),
        BlocProvider(create: (context) => getIt<FindLocationCubit>()),
        BlocProvider(create: (context) => getIt<TravelCreateBloc>()),
        BlocProvider(
            create: (context) => getIt<TravelResearchCubit>()..started()),
      ],
      child: MaterialApp.router(
        routerDelegate: routerDelegate,
        routeInformationParser: BeamerParser(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('ko', ''),
          Locale('en', ''),
        ],
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
              titleSpacing: 20,
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: false,
              titleTextStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(247, 82, 142, 1),
              )),
          // fontFamily: 'Yanolja',
          fontFamily: 'Baemin_Dohyeon',
          primaryColor: Colors.deepPurple,
          inputDecorationTheme: const InputDecorationTheme(
            focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
