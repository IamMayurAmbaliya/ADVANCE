import 'package:fb_chat_app/extensions.dart';
import 'package:fb_chat_app/routes/app_routes.dart';
import 'package:fb_chat_app/services/auth_services.dart';
import 'package:fb_chat_app/services/notification_services.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification Page"),
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  NotificationServices.notificationServices
                      .simpleNotification();
                },
                child: const Text("Simple Notification"),
              ),
              2.heights(context),
              ElevatedButton(
                onPressed: () {
                  NotificationServices.notificationServices
                      .scheduledNotification();
                },
                child: const Text("Scheduled Notification"),
              ),
              2.heights(context),
              ElevatedButton(
                onPressed: () {
                  NotificationServices.notificationServices
                      .bigPictureNotification1();
                },
                child: const Text("Big Picture Notification"),
              ),
              2.heights(context),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Media Style Notification"),
              ),
              2.heights(context),
              ElevatedButton(
                onPressed: () {
                  NotificationServices.notificationServices
                      .multipleNotificationShow();
                },
                child: const Text("Multiple Notification"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
