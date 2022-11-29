import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationService{
  Stream<User?> currentUser();
  Future<void> signUp({required String email, required String password});
  Future<void> signIn({required String email, required String password});
  Future<void> signOut();
  Future<String> getUserId();
}