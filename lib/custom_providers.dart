import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/api/authentication/firebase_authentication_service.dart';
import 'data/api/authentication_service.dart';

class CustomProviders {
  final myRepositories = [
    RepositoryProvider<AuthenticationService>(
      create: (context) => FirebaseAuthenticationService(),
    ),
  ];
}
