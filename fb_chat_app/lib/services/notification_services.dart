import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:logger/logger.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class NotificationServices {
  // Private Named Constructor
  NotificationServices._();

  //Assign into Static Final Object
  static final NotificationServices notificationServices =
      NotificationServices._();

  FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  //...................INITIALIZE A NOTIFICATION ..................
  Future<void> initNotification() async {
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings("ic_launcher");
    DarwinInitializationSettings darwinInitializationSettings =
        const DarwinInitializationSettings();
    InitializationSettings initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: darwinInitializationSettings,
    );

    await notificationsPlugin
        .initialize(initializationSettings)
        .then((value) => Logger().i("Notification initialized..."))
        .onError(
          (error, stackTrace) => Logger().e("NOTIFICATION ERROR: $error"),
        );
  }

  //...................SIMPLE NOTIFICATION ...........................
  Future<void> simpleNotification() async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      "1",
      "FROM DEMO",
      priority: Priority.high,
      importance: Importance.max,
    );

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails();

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    await notificationsPlugin
        .show(
          DateTime.now().year,
          "SIMPLE NOTIFICATION",
          "HAVE A SARCASTIC SMILE TOWARDS THESE CRUCIAL WORLD...",
          notificationDetails,
          payload: "DEMO OF SIMPLE NOTIFICATION...",
        )
        .then((value) => Logger().i("MSG SENT..."))
        .onError(
          (error, stackTrace) => Logger().e("ERROR: $error"),
        );
  }

  //...................SCHEDULE NOTIFICATION .........................
  Future<void> scheduledNotification() async {
    tz.initializeTimeZones();

    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      "1",
      "FROM DEMO",
      priority: Priority.high,
      importance: Importance.max,
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
          "SCHEDULE NOTIFICATION",
          "HAVE A SARCASTIC SMILE TOWARDS THESE CRUCIAL WORLD...",
          tz.TZDateTime.from(
            DateTime.now().add(const Duration(seconds: 2)),
            tz.local,
          ),
          notificationDetails,
          uiLocalNotificationDateInterpretation:
              UILocalNotificationDateInterpretation.absoluteTime,
        )
        .then(
          (value) => Logger().i("Msg sent..."),
        )
        .onError(
          (error, stackTrace) => Logger().e("NTF ERROR: $error"),
        );
  }

  //...................BIG-PICTURE NOTIFICATION ......................
  Future<void> bigPictureNotification1() async {
    String url =
        "https://w0.peakpx.com/wallpaper/449/962/HD-wallpaper-vishnu-hari-narayana-lord-vishnu-god-thumbnail.jpg";

    http.Response response = await http.get(Uri.parse(url));

    Directory directory = await getApplicationDocumentsDirectory();
    File path = File("${directory.path}/img.png");
    path.writeAsBytesSync(response.bodyBytes);

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      "1",
      "FROM DEMO",
      priority: Priority.high,
      importance: Importance.max,
      // largeIcon: DrawableResourceAndroidBitmap("ic_launcher"),
      largeIcon: FilePathAndroidBitmap(path.path),
      styleInformation: BigPictureStyleInformation(
        FilePathAndroidBitmap(path.path),
        hideExpandedLargeIcon: true,
      ),
    );

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails();

    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails, iOS: darwinNotificationDetails);

    await notificationsPlugin
        .show(
          DateTime.now().second,
          "BIG PICTURE NOTIFICATION",
          "Notification sent on ${DateTime.now().hour % 12}:${DateTime.now().minute}:${DateTime.now().second}",
          notificationDetails,
        )
        .then((value) => Logger().i("MSG SENT..."))
        .onError(
          (error, stackTrace) => Logger().e("ERROR: $error"),
        );
  }

  Future<void> bigPictureNotification2() async {
    BigPictureStyleInformation bigPictureStyleInformation =
        const BigPictureStyleInformation(
      DrawableResourceAndroidBitmap('mahadev'),
      contentTitle: 'Code Compilee',
      summaryText: "I AM MAYUR AMBALIYA",
      largeIcon: DrawableResourceAndroidBitmap('img'),
    );

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'big_picture_id',
      'big_picture_title',
      priority: Priority.high,
      importance: Importance.max,
      styleInformation: bigPictureStyleInformation,
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );

    await notificationsPlugin.show(
      111,
      'Big Picture Notification',
      "Notification sent on ${DateTime.now().hour % 12}:${DateTime.now().minute}:${DateTime.now().second}",
      notificationDetails,
    );
  }

  //...................MEDIA-STYLE NOTIFICATION ......................
  void mediaStyleNotification() {}

  //...................MULTIPLE NOTIFICATION ......................
  Future<void> multipleNotificationShow() async {
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
      'Channel_id',
      'Channel_title',
      priority: Priority.high,
      importance: Importance.max,
      groupKey: 'commonMessage',
    );

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails();

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );
    notificationsPlugin.show(
      0,
      'New Notification',
      'User 1 send message',
      notificationDetails,
    );

    Future.delayed(
      const Duration(milliseconds: 1000),
      () {
        notificationsPlugin.show(
          1,
          'New Notification',
          'User 2 send message',
          notificationDetails,
        );
      },
    );

    Future.delayed(
      const Duration(milliseconds: 1500),
      () {
        notificationsPlugin.show(
          2,
          'New Notification',
          'User 3 send message',
          notificationDetails,
        );
      },
    );

    List<String> lines = ['user1', 'user2', 'user3'];

    InboxStyleInformation inboxStyleInformation = InboxStyleInformation(
      lines,
      contentTitle: '${lines.length} messages',
      summaryText: "KEEP SMILE😂",
    );

    AndroidNotificationDetails androidNotificationSpesific =
        AndroidNotificationDetails(
      'groupChennelId',
      'groupChennelTitle',
      styleInformation: inboxStyleInformation,
      groupKey: 'commonMessage',
      setAsGroupSummary: true,
    );
    NotificationDetails platformChannelSpe = NotificationDetails(
      android: androidNotificationSpesific,
    );
    await notificationsPlugin
        .show(
          3,
          'Attention',
          '${lines.length} messages',
          platformChannelSpe,
        )
        .then((value) => Logger().i("MSG SENT..."))
        .onError(
          (error, stackTrace) => Logger().e("ERROR: $error"),
        );
  }
}
