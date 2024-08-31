import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_chat_app/models/todo_model.dart';

class FireStoreService {
  FireStoreService._();

  static final FireStoreService instance = FireStoreService._();

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  String collectionPath = "todo";

  Future<void> addTodo({required TodoModel todoModel}) async {
    //AUTO_ID
    //await firestore.collection(collectionPath).add(todoModel.toMap);

    // Custom ID
    await firestore.collection(collectionPath).doc(todoModel.id).set(
          todoModel.toMap,
        );
  }
}
