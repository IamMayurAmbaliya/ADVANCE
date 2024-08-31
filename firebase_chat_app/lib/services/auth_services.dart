import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class AuthService {
  AuthService._();

  static final AuthService authService = AuthService._();

  //create instance of firebaseAuth
  FirebaseAuth authentication = FirebaseAuth.instance;

  //Guest-Login....Guest-account
  Future<User?> anonymousLogin() async {
    User? user;
    try {
      UserCredential credential = await authentication.signInAnonymously();
      Logger().i("Signed in with temporary account.");
      user = credential.user;
    } catch (e) {
      Logger().e("EXCEPTION: ${e.toString()}");
    }
    return user;
  }

  //Register User......User SignUp
  Future<User?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    User? user;
    try {
      // if (email.isNotEmpty && password.isNotEmpty && name.isNotEmpty) {
      UserCredential credential = await authentication
          .createUserWithEmailAndPassword(email: email, password: password);
      Logger().i("User Created Successfully..!!!");
      user = credential.user;
      // } else {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     const SnackBar(
      //       content: Text("PLEASE FILL ALL THE FIELDS...!!"),
      //       backgroundColor: Colors.red,
      //       behavior: SnackBarBehavior.floating,
      //     ),
      //   );
      // }
    } catch (e) {
      Logger().e("EXCEPTION: ${e.toString()}");
    }
    return user;
  }

  //User SignIn
  Future<User?> signInWithEmailAndPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    User? user;
    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        UserCredential credential = await authentication
            .signInWithEmailAndPassword(email: email, password: password);
        Logger().i("User Signed in Successfully..!!!");
        user = credential.user;
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("ENTER VALID EMAIL & PASSWORD..!!"),
            backgroundColor: Colors.red,
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      Logger().e("EXCEPTION: ${e.toString()}");
    }
    return user;
  }

  //User LogOut.....User SignOut
  Future<void> logOut() async {
    await authentication.signOut();
    Logger().i("User Signed Out Successfully..!!!");
  }

  //SignIn With GOOGLE.....
  Future<UserCredential> signInWithGoogle() async {
    Logger().i("1");
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    Logger().i("2");
    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    Logger().i("3");
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    Logger().i("4");
    // Once signed in, return the UserCredential
    return await authentication.signInWithCredential(credential);
  }

  // Future<UserCredential> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //
  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;
  //
  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );
  //
  //   // Once signed in, return the UserCredential
  //   return await authentication.signInWithCredential(credential);
  // }

  // Future<UserCredential> signInWithFacebook() async {
  //   // Trigger the sign-in flow
  //   final LoginResult loginResult = await FacebookAuth.instance.login();
  //
  //   // Create a credential from the access token
  //   final OAuthCredential facebookAuthCredential =
  //       FacebookAuthProvider.credential(loginResult.accessToken.token);
  //
  //   // Once signed in, return the UserCredential
  //   return authentication.signInWithCredential(facebookAuthCredential);
  // }
}
