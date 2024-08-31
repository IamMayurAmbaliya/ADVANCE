import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationServices {
  NotificationServices._();

  static final NotificationServices instance = NotificationServices._();

  FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    //2.android initialize
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings('ic_launcher');

    //3.IOS initialize
    DarwinInitializationSettings darwinInitializationSettings =
        const DarwinInitializationSettings();

    //1.initialize the setting
    InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: darwinInitializationSettings,
    );

    //4.initialize the localNotificationPlugin
    await notificationsPlugin
        .initialize(initializationSettings)
        .then((value) => Logger().i("Notification Initialized......"))
        .onError(
            (error, stackTrace) => Logger().i("Notification Error : $error"));
  }

  //SIMPLE NOTIFICATION
  Future<void> simpleNotification() async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      "1",
      "FROM DEMO",
      importance: Importance.max,
      priority: Priority.max,
    );

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails();

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );
    await notificationsPlugin
        .show(
          DateTime.now().hour,
          "HII THERE...",
          "HAVE A SARCASTIC SMILE TO THESE CRUCIAL WORLD...",
          notificationDetails,
        )
        .then((value) => Logger().i("MSG SENT..."))
        .onError(
          (error, stackTrace) => Logger().e("ERROR: $error"),
        );
  }

  //SCHEDULE NOTIFICATION
  Future<void> scheduledNotification() async {
    tz.initializeTimeZones();

    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      "1",
      "FROM DEMO",
      importance: Importance.max,
      priority: Priority.max,
    );

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails();

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );
    await notificationsPlugin
        .zonedSchedule(
            1,
            "HEY THERE...",
            "HAVE A SARCASTIC SMILE😁 TOWARDS THESE CRUCIAL WORLD...",
            tz.TZDateTime.from(
              DateTime.now().add(
                const Duration(seconds: 3),
              ),
              tz.local,
            ),
            notificationDetails,
            uiLocalNotificationDateInterpretation:
                UILocalNotificationDateInterpretation.absoluteTime)
        .then(
          (value) => Logger().i("Scheduled Msg sent..."),
        )
        .onError(
          (error, stackTrace) => Logger().e("NTF ERROR: $error"),
        );
  }
}
