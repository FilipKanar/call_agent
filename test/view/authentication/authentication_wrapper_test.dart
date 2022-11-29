import 'package:call_agent/bloc/authentication/authentication_bloc.dart';
import 'package:call_agent/view/authentication/authentication_wrapper.dart';
import 'package:call_agent/view/authentication/sign_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../authentication_test/mock_authentication_service.dart';

void main() {
  late MockAuthenticationService mockAuthenticationService;
  setUp(
    () {
      mockAuthenticationService = MockAuthenticationService();
    },
  );
  testWidgets(
    'View switch depending on authentication',
    (tester) async {
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => AuthenticationBloc(
              authenticationService: mockAuthenticationService),
          child: const MaterialApp(
            home: AuthenticationWrapper(),
          ),
        ),
      );
      expect(find.byType(Container), findsNothing);
      expect(find.byType(SignScreen), findsOneWidget);
    },
  );
}
