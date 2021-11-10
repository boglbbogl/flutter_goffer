import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

// 사용하지 않음
@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.initial());
  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(authCheckRequested: (e) async* {});
  }
}
