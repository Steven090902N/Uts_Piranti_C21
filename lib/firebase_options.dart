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
    apiKey: 'AIzaSyDN9aZOK0pGfAPxHgJAFUjoAF-ENoiQ3Eo',
    appId: '1:500126735689:web:ec81120e0cd043fde3ce98',
    messagingSenderId: '500126735689',
    projectId: 'uts-piranti-caf80',
    authDomain: 'uts-piranti-caf80.firebaseapp.com',
    storageBucket: 'uts-piranti-caf80.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOZMplmS9uMdkGQwaSFcBmM5LvJ7MLMpE',
    appId: '1:500126735689:android:28c4afbf1e4f0d5ee3ce98',
    messagingSenderId: '500126735689',
    projectId: 'uts-piranti-caf80',
    storageBucket: 'uts-piranti-caf80.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA49nLZpsFsApZU49oeWayADH0AiKp8A-M',
    appId: '1:500126735689:ios:e0b863913c4375a5e3ce98',
    messagingSenderId: '500126735689',
    projectId: 'uts-piranti-caf80',
    storageBucket: 'uts-piranti-caf80.appspot.com',
    iosBundleId: 'com.example.utsApplicationPiranti',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA49nLZpsFsApZU49oeWayADH0AiKp8A-M',
    appId: '1:500126735689:ios:e375d7d032d8444ee3ce98',
    messagingSenderId: '500126735689',
    projectId: 'uts-piranti-caf80',
    storageBucket: 'uts-piranti-caf80.appspot.com',
    iosBundleId: 'com.example.utsApplicationPiranti.RunnerTests',
  );
}
