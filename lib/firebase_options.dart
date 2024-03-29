// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

//  await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
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
    apiKey: 'AIzaSyCGIGmLh36zTjPGyrF9UGbsPqiCMZRdGZo',
    appId: '1:149530220671:web:9c1bb123bdafdaf38ac74a',
    messagingSenderId: '149530220671',
    projectId: 'cahaya-teknik',
    authDomain: 'cahaya-teknik.firebaseapp.com',
    storageBucket: 'cahaya-teknik.appspot.com',
    measurementId: 'G-K2V2VQ24ED',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBExXf1Zq7kF6lSGplNe9BBDQaQrTKPz7Q',
    appId: '1:149530220671:android:7a1214832419f3f68ac74a',
    messagingSenderId: '149530220671',
    projectId: 'cahaya-teknik',
    storageBucket: 'cahaya-teknik.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANVoTSfyaOKzAMMBpJIHTjqEKBW_gVvBU',
    appId: '1:149530220671:ios:a33d6cd9816f09d08ac74a',
    messagingSenderId: '149530220671',
    projectId: 'cahaya-teknik',
    storageBucket: 'cahaya-teknik.appspot.com',
    iosClientId:
        '149530220671-9os6de648q7l6746qen3k5ajqagi4vkr.apps.googleusercontent.com',
    iosBundleId: 'com.example.cahayaaTeknik',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyANVoTSfyaOKzAMMBpJIHTjqEKBW_gVvBU',
    appId: '1:149530220671:ios:16a10d92445c83728ac74a',
    messagingSenderId: '149530220671',
    projectId: 'cahaya-teknik',
    storageBucket: 'cahaya-teknik.appspot.com',
    iosClientId:
        '149530220671-bn6i7tmard0qa4k0m8fre7mc1cpni1m4.apps.googleusercontent.com',
    iosBundleId: 'com.example.cahayaaTeknik.RunnerTests',
  );
}
