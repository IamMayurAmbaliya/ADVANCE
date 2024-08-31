import 'package:fb_chat_app/models/user_model.dart';
import 'package:fb_chat_app/routes/app_routes.dart';
import 'package:fb_chat_app/services/auth_services.dart';
import 'package:fb_chat_app/services/firestore_services.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                foregroundImage: NetworkImage(
                  AuthServices
                          .authServices.authentication.currentUser!.photoURL ??
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGWm7kgMH1PEsycRwkyqPcPB1b2NITpD8j2g&usqp=CAU",
                ),
              ),
              accountName: Text(AuthServices
                      .authServices.authentication.currentUser!.displayName ??
                  "UnKnown"),
              accountEmail: Text(
                  AuthServices.authServices.authentication.currentUser!.email ??
                      "unknown@gmail.com"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          AuthServices.authServices.authentication.currentUser!.displayName
              .toString(),
        ),
        actions: [
          OutlinedButton(
            onPressed: () {
              AuthServices.authServices.logOut().then(
                (value) {
                  Navigator.of(context).pushReplacementNamed(
                    AppRoutes.instance.loginPage,
                  );
                },
              );
            },
            child: const Text("Log-Out"),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          FireStoreServices.instance.addUser(
            userModel: UserModel(
              uid: AuthServices.authServices.authentication.currentUser!.uid,
              displayName: AuthServices
                      .authServices.authentication.currentUser!.displayName ??
                  "UnKnown",
              email:
                  AuthServices.authServices.authentication.currentUser!.email ??
                      "Unknown@gmail.com",
              phoneNumber: AuthServices
                      .authServices.authentication.currentUser!.phoneNumber ??
                  "1234567890",
              photoURL: AuthServices
                      .authServices.authentication.currentUser!.photoURL ??
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2Fbapu-in-2022--729160995932248278%2F&psig=AOvVaw34sULMl3DCzTNKDRHsy1vp&ust=1723641053728000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICB_LeF8ocDFQAAAAAdAAAAABAE",
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
