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
    apiKey: 'AIzaSyAK3ENN4kmzrTt2_E2qQp9c49V3fdlBa3g',
    appId: '1:946265384533:web:63e37a7124c95cfbde16dc',
    messagingSenderId: '946265384533',
    projectId: 'webkoma-ccf4f',
    authDomain: 'webkoma-ccf4f.firebaseapp.com',
    databaseURL: 'https://webkoma-ccf4f-default-rtdb.firebaseio.com',
    storageBucket: 'webkoma-ccf4f.appspot.com',
    measurementId: 'G-2GE7CGGBNV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDey5P7jbVgr76mc2QL19i7L1J0ZlxT0Sw',
    appId: '1:946265384533:android:17246d67c77671dbde16dc',
    messagingSenderId: '946265384533',
    projectId: 'webkoma-ccf4f',
    databaseURL: 'https://webkoma-ccf4f-default-rtdb.firebaseio.com',
    storageBucket: 'webkoma-ccf4f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBuSThooinxCOEpPKsRwqOV_tCdYZYHc14',
    appId: '1:946265384533:ios:c2b57bb55eabe21ede16dc',
    messagingSenderId: '946265384533',
    projectId: 'webkoma-ccf4f',
    databaseURL: 'https://webkoma-ccf4f-default-rtdb.firebaseio.com',
    storageBucket: 'webkoma-ccf4f.appspot.com',
    iosClientId: '946265384533-hmm6pf59k3n0hf2t39lp46uhm1f7i1gd.apps.googleusercontent.com',
    iosBundleId: 'com.example.test1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBuSThooinxCOEpPKsRwqOV_tCdYZYHc14',
    appId: '1:946265384533:ios:c2b57bb55eabe21ede16dc',
    messagingSenderId: '946265384533',
    projectId: 'webkoma-ccf4f',
    databaseURL: 'https://webkoma-ccf4f-default-rtdb.firebaseio.com',
    storageBucket: 'webkoma-ccf4f.appspot.com',
    iosClientId: '946265384533-hmm6pf59k3n0hf2t39lp46uhm1f7i1gd.apps.googleusercontent.com',
    iosBundleId: 'com.example.test1',
  );
}
