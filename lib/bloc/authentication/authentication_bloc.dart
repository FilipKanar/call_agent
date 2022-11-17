import 'package:call_agent/bloc/authentication/authentication_event.dart';
import 'package:call_agent/bloc/authentication/authentication_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/api/authentication_service.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationService authenticationService;

  AuthenticationBloc({required this.authenticationService})
      : super(UnAuthenticated()) {
    on<SignInRequested>((event, emit) async {
      try {
        await authenticationService.signIn(
            email: event.email, password: event.password);
        emit(Authenticated());
      } on Exception catch (e) {
        emit(AuthenticationError(e.toString()));
        //emit(UnAuthenticated());
      }
    });
    on<SignUpRequested>((event, emit) async {
      try {
        await authenticationService.signUp(
            email: event.email, password: event.password);
        emit(Authenticated());
      } catch (e) {
        emit(AuthenticationError(e.toString()));
        //emit(UnAuthenticated());
      }
    });
    on<SignOutRequested>((event, emit) async {
      await authenticationService.signOut();
      emit(UnAuthenticated());
    });
  }
}
