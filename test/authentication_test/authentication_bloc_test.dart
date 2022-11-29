import 'package:bloc_test/bloc_test.dart';
import 'package:call_agent/bloc/authentication/authentication_bloc.dart';
import 'package:call_agent/bloc/authentication/authentication_event.dart';
import 'package:call_agent/bloc/authentication/authentication_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mock_authentication_service.dart';
import 'mock_error_authentication_service.dart';

void main() {
  group('Authentication Bloc test', () {
    late AuthenticationBloc authenticationBloc;
    MockAuthenticationService mockAuthenticationService;
    setUp(() {
      EquatableConfig.stringify = true;
      mockAuthenticationService = MockAuthenticationService();
      authenticationBloc =
          AuthenticationBloc(authenticationService: mockAuthenticationService);
    });
    blocTest<AuthenticationBloc, AuthenticationState>('Sign Up test',
        build: () => authenticationBloc,
        act: (bloc) => bloc.add(SignInRequested('', '')),
        expect: () => [Authenticated()]);
    blocTest<AuthenticationBloc, AuthenticationState>('Logout test',
        build: () => authenticationBloc,
        act: (bloc) => bloc.add(SignUpRequested('', '')),
        expect: () => [Authenticated()]);
    blocTest<AuthenticationBloc, AuthenticationState>('Sign Out test',
        build: () => authenticationBloc,
        act: (bloc) => bloc.add(SignOutRequested()),
        expect: () => [UnAuthenticated()]);
    tearDown(() {
      authenticationBloc.close();
    });
  });
  group('Authentication Bloc Error Test', () {
    late AuthenticationBloc authenticationBloc;
    MockErrorAuthenticationService mockAuthenticationService;
    setUp(() {
      EquatableConfig.stringify = true;
      mockAuthenticationService = MockErrorAuthenticationService();
      authenticationBloc =
          AuthenticationBloc(authenticationService: mockAuthenticationService);
    });
    blocTest<AuthenticationBloc, AuthenticationState>('Sign Up test',
        build: () => authenticationBloc,
        act: (bloc) => bloc.add(SignInRequested('', '')),
        expect: () => [AuthenticationError(Exception('Sign In Exception').toString())]);
    blocTest<AuthenticationBloc, AuthenticationState>('Logout test',
        build: () => authenticationBloc,
        act: (bloc) => bloc.add(SignUpRequested('', '')),
        expect: () => [AuthenticationError(Exception('Sign Up Exception').toString())]);
    tearDown(() {
      authenticationBloc.close();
    });
  });
}
