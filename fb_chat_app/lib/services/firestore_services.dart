import 'package:fb_chat_app/models/user_model.dart';
import 'package:fb_chat_app/services/auth_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreServices {
  FireStoreServices._();
  static final FireStoreServices instance = FireStoreServices._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  String userCollection = "allUsers";

  Future<void> addUser({required UserModel userModel}) async {
    User? user = FirebaseAuth.instance.currentUser;
    await firestore
        .collection(userCollection)
        .doc(user!.uid)
        .set(userModel.toJson);
  }

  Future<void> getUser() async {
    DocumentSnapshot snapshot = await firestore
        .collection(userCollection)
        .doc(AuthServices.authServices.authentication.currentUser?.uid)
        .get();

    snapshot.data();
  }
}
