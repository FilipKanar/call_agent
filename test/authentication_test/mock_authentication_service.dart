import 'package:call_agent/data/api/authentication_service.dart';

class MockAuthenticationService implements AuthenticationService {
  @override
  Future<String> getUserId() => Future.value('MOCK_USERID');

  @override
  Future<void> signIn({required String email, required String password}) {
    return Future.value();
  }

  @override
  Future<void> signOut() {
    return Future.value();
  }

  @override
  Future<void> signUp({required String email, required String password}) {
    return Future.value();
  }
}