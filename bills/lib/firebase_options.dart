// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA3tFpI0HkIoQufdNYIByCpFIY0eWHO-Lc',
    appId: '1:126701539999:web:735137b8169d97ffef08aa',
    messagingSenderId: '126701539999',
    projectId: 'bills-a15ac',
    authDomain: 'bills-a15ac.firebaseapp.com',
    databaseURL: 'https://bills-a15ac-default-rtdb.firebaseio.com',
    storageBucket: 'bills-a15ac.appspot.com',
    measurementId: 'G-44JJ6C9SP3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDIhMWSHmYyRf8Hmi6wzFsNjnQehQ-bNxA',
    appId: '1:126701539999:android:8fc41e93b8ecc487ef08aa',
    messagingSenderId: '126701539999',
    projectId: 'bills-a15ac',
    databaseURL: 'https://bills-a15ac-default-rtdb.firebaseio.com',
    storageBucket: 'bills-a15ac.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQaEKnYTvxGSDcqOwquAg9nvpuBlX1sNc',
    appId: '1:126701539999:ios:a80acbc1824e975aef08aa',
    messagingSenderId: '126701539999',
    projectId: 'bills-a15ac',
    databaseURL: 'https://bills-a15ac-default-rtdb.firebaseio.com',
    storageBucket: 'bills-a15ac.appspot.com',
    iosClientId: '126701539999-bu69p64cfe2u53ra5t1gve596pb7pgil.apps.googleusercontent.com',
    iosBundleId: 'com.example.bills',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAQaEKnYTvxGSDcqOwquAg9nvpuBlX1sNc',
    appId: '1:126701539999:ios:a80acbc1824e975aef08aa',
    messagingSenderId: '126701539999',
    projectId: 'bills-a15ac',
    databaseURL: 'https://bills-a15ac-default-rtdb.firebaseio.com',
    storageBucket: 'bills-a15ac.appspot.com',
    iosClientId: '126701539999-bu69p64cfe2u53ra5t1gve596pb7pgil.apps.googleusercontent.com',
    iosBundleId: 'com.example.bills',
  );
}
