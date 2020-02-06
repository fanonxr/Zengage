import 'package:firebase_auth/firebase_auth.dart';
import 'package:zengage_learning_platform/apis/firebase/base_email_password_auth.dart';

class FireBaseAuth implements BaseEmailPasswordAuth {
  final FirebaseAuth _fireBaseAuth = FirebaseAuth.instance;

  @override
  Future<FirebaseUser> getCurrentUser() {
    // TODO: implement getCurrentUser
    return null;
  }

  @override
  Future<bool> isEmailVerified() {
    // TODO: implement isEmailVerified
    return null;
  }

  @override
  Future<bool> sendEmailVerification() {
    // TODO: implement sendEmailVerification
    return null;
  }

  @override
  Future<String> signInWithEmailPassword(String email, String password) {
    // TODO: implement signInWithEmailPassword
    return null;
  }

  @override
  Future<void> signOutUser() {
    // TODO: implement signOutUser
    return null;
  }

  @override
  Future<String> signUpWithEmailPassword(String email, String password) {
    // TODO: implement signUpWithEmailPassword
    return null;
  }
}
