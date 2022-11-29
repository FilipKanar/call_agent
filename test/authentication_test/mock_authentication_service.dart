import 'package:call_agent/data/api/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';

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

  @override
  Stream<User?> currentUser() {
    return MockFirebaseAuth(signedIn: true).onAuthStateChanged;
}
}