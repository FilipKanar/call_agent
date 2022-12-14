import 'package:call_agent/data/api/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthenticationService implements AuthenticationService {

  FirebaseAuth firebaseAuthInstance = FirebaseAuth.instance;

  @override
  Stream<User?> currentUser() => firebaseAuthInstance.authStateChanges();

  @override
  Future<void> signUp({required String email, required String password}) async {
    try{
      await firebaseAuthInstance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if(e.code == 'weak-password') {
        throw Exception('The password provided is too weak');
      } else if (e.code == "email-already-in-use") {
        throw Exception('The account already exists for that email.');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try{
      firebaseAuthInstance.signOut();
    }catch (e){
      throw Exception(e);
    }
  }

  @override
  Future<void> signIn({required String email, required String password}) async {
    try{
      await firebaseAuthInstance.signInWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e){
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided for that user.');
      }
    }catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<String> getUserId() async {
    return firebaseAuthInstance.currentUser!.uid;
  }
}