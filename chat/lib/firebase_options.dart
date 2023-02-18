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
    apiKey: 'AIzaSyC33JBiUks7mbSx0JzhjDlF7woXenNwGwc',
    appId: '1:791092931709:web:b98d3f6e75e921db099514',
    messagingSenderId: '791092931709',
    projectId: 'komacrazy-d80a6',
    authDomain: 'komacrazy-d80a6.firebaseapp.com',
    databaseURL: 'https://komacrazy-d80a6-default-rtdb.firebaseio.com',
    storageBucket: 'komacrazy-d80a6.appspot.com',
    measurementId: 'G-RN0EKZ7G2L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFZVDLwg4zIaejH_IR5vIu7yCaq6AF-vo',
    appId: '1:791092931709:android:ae6835410066427d099514',
    messagingSenderId: '791092931709',
    projectId: 'komacrazy-d80a6',
    databaseURL: 'https://komacrazy-d80a6-default-rtdb.firebaseio.com',
    storageBucket: 'komacrazy-d80a6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBH81XePqCl2MYZLjrX1ua5Nn9c60EtKF4',
    appId: '1:791092931709:ios:fe36b042c20e72b5099514',
    messagingSenderId: '791092931709',
    projectId: 'komacrazy-d80a6',
    databaseURL: 'https://komacrazy-d80a6-default-rtdb.firebaseio.com',
    storageBucket: 'komacrazy-d80a6.appspot.com',
    iosClientId: '791092931709-8qod916d29olr83kgkfvogt41tgtk77n.apps.googleusercontent.com',
    iosBundleId: 'com.example.chat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBH81XePqCl2MYZLjrX1ua5Nn9c60EtKF4',
    appId: '1:791092931709:ios:fe36b042c20e72b5099514',
    messagingSenderId: '791092931709',
    projectId: 'komacrazy-d80a6',
    databaseURL: 'https://komacrazy-d80a6-default-rtdb.firebaseio.com',
    storageBucket: 'komacrazy-d80a6.appspot.com',
    iosClientId: '791092931709-8qod916d29olr83kgkfvogt41tgtk77n.apps.googleusercontent.com',
    iosBundleId: 'com.example.chat',
  );
}
