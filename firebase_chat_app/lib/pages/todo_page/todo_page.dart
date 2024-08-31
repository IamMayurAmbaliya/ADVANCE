import 'package:firebase_chat_app/routes/app_routes.dart';
import 'package:firebase_chat_app/services/auth_services.dart';
import 'package:firebase_chat_app/services/notification_services.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Todo"),
        actions: [
          IconButton(
            onPressed: () {
              AuthService.authService.logOut().then(
                (value) {
                  Navigator.of(context)
                      .pushReplacementNamed(AppRoutes.instance.loginPage);
                },
              );
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                NotificationServices.instance.simpleNotification();
              },
              child: const Text("Simple Notification"),
            ),
            ElevatedButton(
              onPressed: () {
                NotificationServices.instance.scheduledNotification();
              },
              child: const Text("Scheduled Notification"),
            ),
          ],
        ),
      ),
    );
  }
}
