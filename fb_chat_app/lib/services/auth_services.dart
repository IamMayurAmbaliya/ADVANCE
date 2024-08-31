import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthServices {
  // Private Named Constructor
  AuthServices._();

  //Assign into Static Final Object
  static final AuthServices authServices = AuthServices._();

  FirebaseAuth authentication = FirebaseAuth.instance;

  //.....................Guest-Login....Guest-account...................
  Future<User?> anonymousLogin() async {
    UserCredential credential = await authentication.signInAnonymously();
    Logger().i("Successfully Login as Guest ..!!!");

    return credential.user;
  }

  //..............Register User......User SignUp........................
  Future<User?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    User? user;

    try {
      UserCredential credential = await authentication
          .createUserWithEmailAndPassword(email: email, password: password);
      Logger().i("User Created Successfully..!!!");
      user = credential.user;
    } catch (e) {
      Logger().e("EXCEPTION: ${e.toString()}");
    }

    return user;
  }

  //..........................User SignIn...............................
  Future<User?> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    User? user;

    try {
      UserCredential credential = await authentication
          .signInWithEmailAndPassword(email: email, password: password);
      Logger().i("User Signed in Successfully..!!!");
      user = credential.user;
    } catch (e) {
      Logger().e("EXCEPTION: ${e.toString()}");
    }

    return user;
  }

  //..........................Google SignIn.............................
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await authentication.signInWithCredential(credential);
  }

  //..................User LogOut.....User SignOut......................
  Future<void> logOut() async {
    await authentication.signOut();
    await GoogleSignIn().signOut();
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
    Logger().i("User Signed Out Successfully..!!!");
  }
}
