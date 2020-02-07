import 'package:firebase_auth/firebase_auth.dart';
import 'package:zengage_learning_platform/apis/firebase/base_email_password_auth.dart';

class FireBaseAuth implements BaseEmailPasswordAuth {
  final FirebaseAuth _fireBaseAuth = FirebaseAuth.instance;

  @override
  Future<FirebaseUser> getCurrentUser() async {
    FirebaseUser _user = await _fireBaseAuth.currentUser();
//    TODO: Maybe add custom logger here while in development
    return _user;
  }

  @override
  Future<String> signUpWithEmailPassword(String email, String password) async {
    FirebaseUser _user = await _fireBaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return _user.uid;
  }

  @override
  Future<String> signInWithEmailPassword(String email, String password) async {
    FirebaseUser _user = await _fireBaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return _user.uid;
  }

  @override
  Future<void> signOutUser() {
    // TODO: Might need to add async to the method if it doesn't work
    return _fireBaseAuth.signOut();
  }

  @override
  Future<void> sendEmailVerification() async {
    FirebaseUser _user = await getCurrentUser();
    _user.sendEmailVerification();
  }

  @override
  Future<bool> isEmailVerified() async {
    FirebaseUser _user = await getCurrentUser();
//    TODO: Maybe add custom logger here while in development
    return _user.isEmailVerified;
  }
}
