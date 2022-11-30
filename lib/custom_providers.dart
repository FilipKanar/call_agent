import 'package:call_agent/bloc/authentication/authentication_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/api/authentication/firebase_authentication_service.dart';
import 'data/api/authentication_service.dart';

class CustomProviders {
  static final repositories = [
    RepositoryProvider<AuthenticationService>(
      create: (context) => FirebaseAuthenticationService(),
    ),
  ];
  static final blocs = [
    BlocProvider(
      create: (context) => AuthenticationBloc(
        authenticationService:
            RepositoryProvider.of<AuthenticationService>(context),
      ),
    )
  ];
}
