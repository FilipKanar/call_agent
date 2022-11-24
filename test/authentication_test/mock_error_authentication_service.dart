import 'package:call_agent/data/api/authentication_service.dart';

class MockErrorAuthenticationService implements AuthenticationService {
  @override
  Future<String> getUserId() {
    throw Exception('Get User Id Exception');
  }

  @override
  Future<void> signIn({required String email, required String password}) {
    throw Exception('Sign In Exception');
  }

  @override
  Future<void> signOut() {
   return Future.value();
  }

  @override
  Future<void> signUp({required String email, required String password}) {
    throw Exception('Sign Up Exception');
  }
}