import 'package:flutter_goffer/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
