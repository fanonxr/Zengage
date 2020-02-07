import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseEmailPasswordAuth {
  Future<String> signInWithEmailPassword(String email, String password);

  Future<String> signUpWithEmailPassword(String email, String password);

  Future<FirebaseUser> getCurrentUser();

  ///Send an email to verify their email address
  Future<void> sendEmailVerification();

  Future<void> signOutUser();

  Future<bool> isEmailVerified();
}
