// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCOSFfT9tN7CHv9pYDJSJeSsOKj0J3Gvyo',
    appId: '1:154507383798:web:aaf7ea7eb29d6c31396dd7',
    messagingSenderId: '154507383798',
    projectId: 'fb-exam-1',
    authDomain: 'fb-exam-1.firebaseapp.com',
    storageBucket: 'fb-exam-1.appspot.com',
    measurementId: 'G-W8ZV0MQRHK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD8Ep5yQh4pp690Qo5U31Ly4vmPBS0Nj34',
    appId: '1:154507383798:android:4d9ffe42dd775f38396dd7',
    messagingSenderId: '154507383798',
    projectId: 'fb-exam-1',
    storageBucket: 'fb-exam-1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIkZ02BG7HZ5aET6B-k_uXEruOQTqGXtw',
    appId: '1:154507383798:ios:cb0ac8e9d2d852a1396dd7',
    messagingSenderId: '154507383798',
    projectId: 'fb-exam-1',
    storageBucket: 'fb-exam-1.appspot.com',
    iosBundleId: 'com.example.fbExam',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBIkZ02BG7HZ5aET6B-k_uXEruOQTqGXtw',
    appId: '1:154507383798:ios:cb0ac8e9d2d852a1396dd7',
    messagingSenderId: '154507383798',
    projectId: 'fb-exam-1',
    storageBucket: 'fb-exam-1.appspot.com',
    iosBundleId: 'com.example.fbExam',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCOSFfT9tN7CHv9pYDJSJeSsOKj0J3Gvyo',
    appId: '1:154507383798:web:a0635d8d15a01f34396dd7',
    messagingSenderId: '154507383798',
    projectId: 'fb-exam-1',
    authDomain: 'fb-exam-1.firebaseapp.com',
    storageBucket: 'fb-exam-1.appspot.com',
    measurementId: 'G-91M0SNB4VD',
  );
}
